const express = require('express')

const router = express.Router()
const Wholesale = require('../models/wholesale')

// create
router.post('/wholesales', (req, res, next) => {
  // getting the wholesale data from the req.body
  const wholesaleData = req.body.wholesale
  // using create method to create a wholesale
  Wholesale.create(wholesaleData)
    .then(wholesale => {
      res.status(201).json({ wholesale: wholesale })
    })
    .catch(next)
})
// index get
router.get('/wholesales', (req, res, next) => {
  Wholesale.find()
  // check if the wholesale in this needs to end with an 's'
    .then(wholesale => res.json({ wholesale: wholesale }))
    .catch(next)
})

// show get
router.get('/wholesales/:id', (req, res, next) => {
  const id = req.params.id

  Wholesale.findById(id)
    .then(wholesale => res.json({ wholesale: wholesale }))
    .catch(next)
})

// update patch
router.patch('/wholesales/:id', (req, res, next) => {
  // get the id out of the parameters
  const id = req.params.id
  // get the wholesale data from the req.body
  const wholesaleData = req.body.wholesale
  // return the document that matched the id that was passed in
  Wholesale.findByI(id)
    .then(wholesale => wholesale.updateOne(wholesaleData))
    .then(() => res.sendStatus(204))
    .catch(next)
})

router.delete('/wholesales/:id', (req, res, next) => {
  const id = req.params.id

  Wholesale.findById(id)
    .then(wholesale => wholesale.deleteOne())
    .then(() => res.sendStatus(204))
    .catch(next)
})

// export the router to be required and mounted in server
module.exports = router
