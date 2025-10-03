Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: FLCPatientToFHIR
InstanceOf: LiquidStructureMap
Usage: #definition
* name = "flc-patient-to-fhir"
* id = "flc-patient-to-fhir"
* version = "1.0"
* title = "FLC Patient to FHIR"
* status = #draft
* experimental = true
* date = "2025-10-02"
* publisher = "Service Well AB"
* contact.name = "Informatik, Enheten för Digitalisering"
* description = "Example Structure Map"
* jurisdiction = urn:iso:std:iso:3166#001 "World"
* structure[0].url = Canonical(FLCPatient)
* structure[=].mode = #source
* structure[+].url = Canonical(Patient)
* structure[=].mode = #target
* group.name = "Examples"
* group.typeMode = #none
* group.documentation = "test -> testValue"
* group.input.name = "test"
* group.input.type = "FLCPatient"
* group.input.mode = #source
* group.rule.name = "liquid"
* group.rule.source.context = "source"
* group.rule.source.type = "Message"
* group.rule.source.variable = "msg"
* group.rule.target.context = "Destination"
* group.rule.target.parameter[+].valueString = "liquid"
// Liquid map metadata (mandatory in profile)
* group.rule.target.extension[FhirLiquidMap].extension[package].valueString = "servicewell.fhir.flc"
* group.rule.target.extension[FhirLiquidMap].extension[liquid].valueString = "ExamplePatient.liquid"
// External terminology dependencies (must be present in terminology server)
//* group.rule.extension[ExternalTerminologyDependency].extension[package].valueString = "hl7.fhir.eu.laboratory"
//* group.rule.extension[ExternalTerminologyDependency].extension[version].valueString = "0.1.0"
//* group.rule.extension[ExternalTerminologyDependency].extension[resource][+].valueUri = "http://hl7.eu/fhir/laboratory/ConceptMap/ConceptMap-eu-diagRptStatus2CompStatus"