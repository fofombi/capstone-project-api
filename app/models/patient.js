const mongoose = require('mongoose')

const patientSchema = new mongoose.Schema({
  mrn: {
    type: Number,
    required: true
  },

  lastName: {
    type: String,
    required: true
  },
  firstName: {
    type: String,
    required: true
  },
  test: {
    type: String,
    required: true
  },
  grossDescription: {
    type: String,
    required: true
  },
  collectionDate: {
    type: Date,
    required: true
  },
  serviceDate: {
    type: Date,
    required: true
  },

  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true
})

module.exports = mongoose.model('Patient', patientSchema)
