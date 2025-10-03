Alias: $library-type = http://terminology.hl7.org/CodeSystem/library-type
Instance: FLCLiquidTemplates
InstanceOf: Library
* name = "FLCLiquidTemplates"
* title = "FLC Liquid Templates"
* status = #active
* experimental = false
* type = $library-type#logic-library
* date = "2025-07-14T07:00:22+01:00"
* description = "This library includes the LIQUID-templates and source sampledata used in this FLC-IG"
* approvalDate = "2025-07-14"
* lastReviewDate = "2025-07-14"
* topic[0].text = "FHIR"
* topic[+].text = "LIQUID"
* content[+].id = "ig-loader-ExamplePatient.liquid" 
* content[=].extension[attachment-folder-structure].extension[folder-path].valueString = "templates"
* content[=].extension[attachment-folder-structure].extension[logical-filename].valueString = "ExamplePatient.liquid"
//Mapping data
* content[+].id = "ig-loader-codesystem.json"
* content[=].extension[attachment-folder-structure].extension[folder-path].valueString = "templates/codesystem"
* content[=].extension[attachment-folder-structure].extension[logical-filename].valueString = "codesystem.json"
// Source data for examples used in project
* content[+].id = "ig-loader-ExamplePatient.json"
* content[=].extension[attachment-folder-structure].extension[folder-path].valueString = "sampledata"
* content[=].extension[attachment-folder-structure].extension[logical-filename].valueString = "ExamplePatient.json"
