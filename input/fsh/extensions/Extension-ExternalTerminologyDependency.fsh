Extension: ExternalTerminologyDependency
Id: external-terminology-dependency
Title: "External Terminology Dependency"
Description: "Declares an external dependency on a terminology package (FHIR NPM) that is required for the conversion process to function correctly, but which is not included in the current Implementation Guide. Used to enable automatic retrieval and loading of the required package into a Terminology Server such as Ontoserver."

Context: StructureMap.group.rule

* ^url = "http://yourdomain.org/fhir/StructureDefinition/external-terminology-dependency"
* ^status = #active
* ^experimental = true
* ^purpose = "Facilitates automated loading of external terminology packages from FHIR Package Servers at runtime or during deployment."

* extension contains
    package 1..1 MS and
    version 1..1 MS and
    resource 1..* MS

* extension[package] ^short = "FHIR Package"
* extension[package] ^definition = "The NPM package name of the FHIR package that contains the terminology resource(s). Used to locate and download the .tgz file from a FHIR Package Server."
* extension[package].value[x] only string

* extension[version] ^short = "Package version"
* extension[version] ^definition = "The version of the FHIR package that contains the required resource(s)."
* extension[version].value[x] only string

* extension[resource] ^short = "Canonical URI"
* extension[resource] ^definition = "The canonical URL of the terminology resource used in the conversion (e.g., ConceptMap, CodeSystem, ValueSet). Used to track dependencies and ensure that the resource is available in the terminology server."
* extension[resource].value[x] only uri
