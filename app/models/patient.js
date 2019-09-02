const mongoose = require('mongoose')

const patientSchema = new mongoose.Schema({
  // MRN stands for Medical Record Number and it could take letters/Number
  // Example of cases receive from Lemuel Shattick Hospital, MRN could be LS00011111222
  mrn: {
    type: String,
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
  // Here the Date is a string because this could allow the tech, to give more details on the collection Date and the service Date.
  collectionDate: {
    type: String,
    required: true
  },
  serviceDate: {
    type: String,
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
