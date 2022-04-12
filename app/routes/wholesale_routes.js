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
    .catch(console.error)
})
// export the router to be required and mounted in server
module.exports = router
