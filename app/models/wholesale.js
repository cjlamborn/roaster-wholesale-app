// title string required
// author string required
// timestamps

const mongoose = require('mongoose')

const wholesaleSchema = new mongoose.Schema(
  {
    name: {
      type: String,
      required: true
    },
    location: {
      type: String,
      required: true
    },
    roasts: {
      type: String,
      required: true
    },
    amount: {
      type: Number,
      required: true
    },
    owner: {
      type: mongoose.Schema.Types.ObjectId,
      ref: 'User'
    }
  },
  {
    timestamps: true
  }
)

module.exports = mongoose.model('Wholesale', wholesaleSchema)
