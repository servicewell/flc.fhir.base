CodeSystem: GenderExample
Id: gender-example
Title: "Example Gender CodeSystem"
Description: "Example CodeSystem that defines gender values for mapping purposes."
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^publisher = "Service Well AB"
* ^version = "1.0.0"

// Code definitions
* #M "Male"
  * ^definition = "A male individual."
* #F "Female"
  * ^definition = "A female individual."

// Note:
// This CodeSystem is for demonstration only.
// The mapping to FHIR's AdministrativeGender will be done via a ConceptMap.

ValueSet: GenderExampleVS
Id: gender-example
Title: "All Codes from Example Gender CodeSystem"
Description: "Example ValueSet that defines gender values for mapping purposes."
* ^status = #active
* ^compose.include.system = Canonical(GenderExample)
