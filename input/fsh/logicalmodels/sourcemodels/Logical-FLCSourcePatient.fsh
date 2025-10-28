Logical: FLCSourcePatient
Id: flc-source-patient
Title: "FLC Source Patient"
Description: "This logical model defines the Patient source structure for test with FLC."
* ^version = "1.0"
* ^experimental = true
* PatientId 1..1 integer "PatientId"
* MRN 1..1 string "Name"
* FirstName 1..1 string "FirstName"
* LastName 1..1 string "LastName"
* PhoneNumber 0..* string "PhoneNumber"
* Gender 1..1 string "Gender"
* DOB 1..1 string "DOB"
* TimeOfDeath 1..1 dateTime "TimeOfDeath"
* Email 0..1 string "Email" 

Mapping: toFHIR
Id: patient
Title: "FHIR Patient"
Source: FLCSourcePatient
Target: "http://hl7.org/fhir/StructureDefinition/Patient"

// Rot
* -> "Patient"

// Identifierare
* PatientId -> "identifier.where(system='http://fhir.purified.link/example/identifierSystem/ehr-source-system-demo').value"
* MRN -> "identifier.where(system='urn:oid:2.16.840.1.113883.19.5' and type.coding(http://terminology.hl7.org/CodeSystem/v2-0203|MR')).value"

// Namn
* FirstName -> "name[0].given"
* LastName -> "name[0].family"

// Kontaktuppgifter
* PhoneNumber -> "telecom.where(system='phone').value"
* Email -> "telecom.where(system='email').value"

// Demografi
* Gender -> "gender (map via ConceptMap GenderExampleMap)"
* DOB -> "birthDate"

// Kliniskt
* TimeOfDeath -> "deceasedDateTime"