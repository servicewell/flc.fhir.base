Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

Instance: e8b835f7-0c46-4166-22ad-23e6783aaf54
InstanceOf: Patient
Usage: #example
Title: "Example FLC transformed Patient"
Description: """
Example of a Patient resource generated through the FLC-transform process, which maps non-FHIR source data (e.g., JSON or XML structures) into FHIR using Liquid templates.

This example illustrates the conversion of a patient record with local identifiers and multiple contact numbers.
The source data contained fields such as PatientId, MRN, FirstName, LastName, Phone Number, Gender, DOB, and TimeOfDeath.

Through the transform:
MRN is mapped to identifier.type = $v2-0203#MR
Local PatientId is mapped to a secondary identifier under a system URI for the source system
Phone Number values are emitted as multiple telecom elements
DOB and TimeOfDeath are converted to FHIR date/time formats
The resulting instance demonstrates how the FLC engine normalizes heterogeneous patient data into a consistent FHIR representation.
"""

* identifier[0].use = #usual
* identifier[=].type = $v2-0203#MR
* identifier[=].system = "urn:oid:2.16.840.1.113883.19.5"
* identifier[=].value = "M0R1N2"
* identifier[+].system = "http://fhir.purified.link/example/identifierSystem/ehr-source-system-demo"
* identifier[=].value = "12434"
* active = true
* name.family = "Smith"
* name.given = "Jerry"
* telecom[0].system = #phone
* telecom[=].value = "0707-123456"
* telecom[+].system = #phone
* telecom[=].value = "0708-123456"
* gender = #male
* birthDate = "1918-01-10"
* deceasedDateTime = "2025-07-28T01:59:23.388+01:00"