Extension: AttachmentFolderStructure
Id: attachment-folder-structure
Title: "Attachment Folder Structure"
Description: "An extension to describe the logical folder structure and file name of an attachment used in Library.content or Binary resources."
* extension contains
    folder-path 1..1 and
    logical-filename 0..1 and
    description 0..1
* extension[folder-path].value[x] only string
* extension[folder-path].valueString ^short = "The logical folder path where the attachment belongs, e.g., 'templates/resources'."
* extension[logical-filename].value[x] only string
* extension[logical-filename].valueString ^short = "The logical file name of the attachment, e.g., '_patient.liquid'."
* extension[description].value[x] only string
* extension[description].valueString ^short = "Field for describing the file's useage and content"
* ^context[+].type = #element
* ^context[=].expression = "Attachment"
