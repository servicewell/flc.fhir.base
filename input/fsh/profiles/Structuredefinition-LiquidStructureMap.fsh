Profile: LiquidStructureMap
Parent: StructureMap
Id: liquid-structuremap
Title: "LiquidStructureMap"
Description: """
Profile for StructureMap used together with the FHIR Liquid Converter. Includes metadata specifying which Liquid template and FHIR package are used, along with external terminology dependencies required for the conversion to function correctly.
"""

* ^version = "0.0.2-draft"
* ^status = #draft
* ^experimental = true

// Required: must specify which Liquid template is used
* group.rule.target.extension contains FhirLiquidMap named fhirLiquidMap 1..1 MS

// Optional: declare external terminology dependencies (not included in this IG)
* extension contains ExternalTerminologyDependency named externalTerminologyDependency 0..* MS
