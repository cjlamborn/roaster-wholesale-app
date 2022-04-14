const express = require('express')
const customErrors = require('../../lib/custom_errors')
const router = express.Router()
const Wholesale = require('../models/wholesale')
const passport = require('passport')
// not using const handle404 = require('../../lib/custom_errors') ?
const handle404 = customErrors.handle404
const requireOwnership = customErrors.requireOwnership

// middleware
const removeBlanks = require('../../lib/remove_blank_fields')

const requireToken = passport.authenticate('bearer', { session: false })

// create
router.post('/wholesales', requireToken, (req, res, next) => {
  // getting the wholesale data from the req.body
  // const wholesaleData = req.body.wholesale
  req.body.wholesale.owner = req.user.id
  // using create method to create a wholesale
  Wholesale.create(req.body.wholesale)
    .then(wholesale => {
      res.status(201).json({ wholesale: wholesale.toObject() })
    })
    .catch(next)
})
// index get
router.get('/wholesales', requireToken, (req, res, next) => {
  Wholesale.find()
  // check if the wholesale in this needs to end with an 's'
    .then(wholesale => res.status(200).json({ wholesale: wholesale }))
    .catch(next)
})

// show get
router.get('/wholesales/:id', requireToken, (req, res, next) => {
  const id = req.params.id

  Wholesale.findById(id)
    .then(handle404)
    .then(wholesale => res.status(200).json({ wholesale: wholesale }))
    .catch(next)
})

// update patch
router.patch('/wholesales/:id', requireToken, removeBlanks, (req, res, next) => {
  // get the id out of the parameters
  const id = req.params.id
  // get the wholesale data from the req.body
  // const wholesaleData = req.body.wholesale
  delete req.body.wholesale.owner
  // return the document that matched the id that was passed in
  Wholesale.findById(id)
    .then(handle404)
    // .then(wholesale => wholesale.updateOne(wholesaleData))
    .then(wholesale => {
      requireOwnership(req, wholesale)
      return wholesale.updateOne(req.body.wholesale)
    })
    .then(() => res.sendStatus(204))
    .catch(next)
})

router.delete('/wholesales/:id', requireToken, (req, res, next) => {
  const id = req.params.id

  Wholesale.findById(id)
    .then(handle404)
    .then(wholesale => {
      requireOwnership(req, wholesale)
      wholesale.deleteOne()
    })
    .then(() => res.sendStatus(204))
    .catch(next)
})

// export the router to be required and mounted in server
module.exports = router
