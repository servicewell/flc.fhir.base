Instance: EHR-SourceSystem-NamingSystem
InstanceOf: NamingSystem
Title: "EHR Source System Patient Identifier"
Description: "Example NamingSystem for patient IDs originating from a fictional EHR source system."
Usage: #definition
* id = "ehr-sourcesystem-namingsystem"
* name = "EHRSourceSystem"
* status = #active
* kind = #identifier
* date = "2025-05-18"
* publisher = "exampleCompany"
* contact[0].name = "exampleCompany Interoperability Team"
* contact[0].telecom[0].system = #email
* contact[0].telecom[0].value = "interop@examplecompany.org"

* responsible = "exampleCompany"
* type = $v2-0203#PI "Patient internal identifier"
* description = "This identifier system is used to uniquely identify patients in the EHR source system."
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://fhir.purified.link/example/identifierSystem/ehr-source-system-demo"
* uniqueId[0].preferred = true
