Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

Instance: e8b835f7-0c46-4166-22ad-23e6783aaf54
InstanceOf: Patient
Usage: #example
* identifier[0].use = #usual
* identifier[=].type = $v2-0203#MR
* identifier[=].system = "urn:oid:2.16.840.1.113883.19.5"
* identifier[=].value = "M0R1N2"
* identifier[+].system = "http://fhir.purified.link/example/identifierSystem/ehr-source-system-dev"
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
* managingOrganization = Reference(Organization/2.16.840.1.113883.19.5) "Good Health Clinic"
* deceasedDateTime = "2025-07-28T01:59:23.388+01:00"