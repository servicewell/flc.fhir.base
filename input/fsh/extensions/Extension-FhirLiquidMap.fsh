Extension: FhirLiquidMap
Id: fhir-liquid-map
Title: "FhirLiquidMap"
Description: "Extension used to specify which Liquid template and package should be used for mapping in a StructureMap."

Context: StructureMap.group.rule.target

* ^status = #active
* ^experimental = true
* ^purpose = "Used to declare the Liquid template and associated FHIR NPM package that should be used for data transformation in a StructureMap."

* extension contains 
    package 1..1 MS and
    liquid 1..1 MS

* extension[package] ^short = "FHIR Package"
* extension[package] ^definition = "The name of the FHIR IG NPM package that contains the Liquid template. Example: 'skane.fhir.se.lims-flc'."
* extension[package].value[x] only string
* extension[package].valueString ^short = "NPM package name"
* extension[package].valueString ^example.label = "Example"
* extension[package].valueString ^example.valueString = "skane.fhir.se.lims-flc"

* extension[liquid] ^short = "Liquid template"
* extension[liquid] ^definition = "The name of the Liquid template file (including file extension) to be used for mapping. The file must exist in the specified package."
* extension[liquid].value[x] only string
* extension[liquid].valueString ^short = "Liquid template filename"
* extension[liquid].valueString ^example.label = "Example"
* extension[liquid].valueString ^example.valueString = "TransactionBundle.liquid"
