// ConceptMap to demonstrate how gender-example codes map to FHIR's AdministrativeGender.
// This map provides equivalence between local codes and the FHIR standard codes.

Instance: GenderExampleMap
InstanceOf: ConceptMap
Usage: #definition
* id = "gender-example-map"
* title = "Mapping from gender-example to AdministrativeGender"
* description = "ConceptMap showing how the local gender-example CodeSystem maps to FHIR AdministrativeGender."
* status = #active
* version = "1.0.0"
* publisher = "Service Well AB"

// Source and target CodeSystems
* sourceUri = Canonical(GenderExample)
* targetUri = "http://hl7.org/fhir/administrative-gender"

// Mapping definitions
* group.source = Canonical(GenderExample)
* group.target = "http://hl7.org/fhir/administrative-gender"

* group.element[0].code = #M
* group.element[0].display = "Male"
* group.element[0].target.code = #male
* group.element[0].target.display = "Male"
* group.element[0].target.equivalence = #equivalent

* group.element[1].code = #F
* group.element[1].display = "Female"
* group.element[1].target.code = #female
* group.element[1].target.display = "Female"
* group.element[1].target.equivalence = #equivalent

// Note:
// Equivalence is set to "equivalent" since the meaning of the codes aligns directly.
