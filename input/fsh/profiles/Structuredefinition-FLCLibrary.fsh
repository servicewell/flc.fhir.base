Profile: FLCLibrary
Parent: Library
Id: flc-library
Title: "FLC Library"
Description: """
Profile for Library used together with the FHIR Liquid Converter (FLC). Includes the liquidtemplate folder content as a base64 binary attachments.
From this FLC-Library profile its possible to create the template folder structure neddened for the FHIR Liquid Converter to work.
"""

* ^status = #draft
* ^experimental = true

* type = $library-type#logic-library
* content 1..* MS 
* content.id 1..1 MS 

// Required: must specify which Liquid template is used
* content.extension contains AttachmentFolderStructure named attachmentFolderStructure 1..1 MS

// Optional: declare external terminology dependencies (not included in this IG)
* extension contains ExternalTerminologyDependency named externalTerminologyDependency 0..* MS


