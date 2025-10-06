Extension: FhirLiquidMap
Id: fhir-liquid-map
Title: "FhirLiquidMap"
Description: "Extension used to specify which Liquid template and package should be used for mapping in a StructureMap."

Context: StructureMap.group.rule.target

* ^status = #active
* ^experimental = true
* ^purpose = "Used to declare the Liquid template and associated FHIR NPM package that should be used for data transformation in a StructureMap."

* extension contains 
    flcPackage 1..1 MS and
    flcPackageVersion 1..1 MS and
    flcLibrary 0..1 MS and
    liquidTemplate 1..1 MS

* extension[flcPackage] ^short = "FLC Package"
* extension[flcPackage] ^definition = "The name of the FHIR IG NPM package that contains the Liquid template."
* extension[flcPackage].value[x] only string
* extension[flcPackage].valueString ^short = "Package name"
* extension[flcPackage].valueString ^example.label = "Example"
* extension[flcPackage].valueString ^example.valueString = "servicewell.fhir.flc"

* extension[flcPackageVersion] ^short = "FHIR Package version"
* extension[flcPackageVersion] ^definition = "The version of the FHIR IG package that contains the Liquid template."
* extension[flcPackageVersion].value[x] only string
* extension[flcPackageVersion].valueString ^short = "Package version"
* extension[flcPackageVersion].valueString ^example.label = "Example"
* extension[flcPackageVersion].valueString ^example.valueString = "0.2.2"

* extension[flcLibrary] ^short = "FLC Librarys"
* extension[flcLibrary] ^definition = "The canonical URL of the Library resource that contains the Liquid template. This is optional, but can be used to ensure that the correct Library is referenced when multiple Libraries exist in the specified package."
* extension[flcLibrary].value[x] only canonical
* extension[flcLibrary].valueCanonical ^short = "FLC Librarys (canonical)"
* extension[flcLibrary].valueCanonical ^example.label = "Example"
* extension[flcLibrary].valueCanonical ^example.valueString = Canonical(FLCLibrary)

* extension[liquidTemplate] ^short = "Liquid template"
* extension[liquidTemplate] ^definition = "The name of the Liquid template file (including file extension) to be used for mapping. The file must exist in the specified package."
* extension[liquidTemplate].value[x] only string
* extension[liquidTemplate].valueString ^short = "Liquid template filename"
* extension[liquidTemplate].valueString ^example.label = "Example"
* extension[liquidTemplate].valueString ^example.valueString = "TransactionBundle.liquid"
