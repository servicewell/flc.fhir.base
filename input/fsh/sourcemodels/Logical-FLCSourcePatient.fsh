Logical: FLCSourcePatient
Id: flc-source-patient
Title: "FLC Source Patient"
Description: "This logical model defines the Patient source structure for test with FLC."
* ^version = "1.0"
* ^experimental = false
* PatientId 1..1 integer "PatientId"
* MRN 1..1 string "Name"
* FirstName 1..1 string "FirstName"
* LastName 1..1 string "LastName"
* PhoneNumber 0..* string "PhoneNumber"
* Gender 1..1 string "Gender"
* DOB 1..1 string "DOB"
* TimeOfDeath 1..1 dateTime "TimeOfDeath"
* Email 0..1 string "Email" 