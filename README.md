
# FLC Implementation Guide

Welcome to the Implementation Guide for **FHIR Liquid Conversion (FLC)**, a powerful, template-driven approach to converting data into FHIR using Liquid templates enriched with terminology mappings. This guide is maintained by **Service Well AB**, the owner and maintainer of this FLC framework and associated IG tooling.

---

## 🔍 What is FLC?

FHIR Liquid Conversion (FLC) is a structured, opinionated way of managing input-to-FHIR transformations using Liquid templates and standard FHIR IG tooling. It builds on Microsoft's [FHIR Converter](https://github.com/microsoft/FHIR-Converter) but introduces several key improvements:

## 🔧 About This Project: Building on the FHIR Liquid Converter (FLC)

This Implementation Guide builds upon the work initiated by Microsoft in their [FHIR Liquid Converter (FLC)](https://github.com/microsoft/FHIR-Converter) project. We’ve **forked the original engine** and extended it with several enhancements, while maintaining full compatibility with the core transformation principles.

Rather than creating a separate transformation project structure around the engine, our goal is to **enable direct use of FLC within an IG**. All mapping resources – including FSH definitions and transformation templates – are authored and maintained inside the IG itself, making the conversion logic version-controlled and portable.

---

## ✨ Key Enhancements

We have introduced the following key improvements to support our use cases:

- **Native XML support** in the engine, allowing input formats common in healthcare (e.g., KITH messages, CDA) to be handled without preprocessing.
- **FSH mapping integration**, enabling transformation logic to be expressed directly in FSH artifacts like StructureMaps, ConceptMaps, and CodeSystems.
- **Terminology service integration**, with full support for FHIR `$translate`, `$expand`, and `$validate-code` operations at runtime – powered by a connected FHIR Terminology Server.
- **No external project scaffolding required**: The engine can be invoked directly from within the IG, simplifying the developer experience and aligning with FHIR's publication tooling.

---

## 🤝 Philosophy and Vision

Our aim is not to replace or compete with Microsoft’s approach, but to **build on their open idea** in a way that aligns with our needs:

- **IG-native workflows**: We believe mappings should live and evolve inside the IG that owns them – just like profiles do.
- **Federated mappings**: The engine and templates are designed to reference **external Liquid templates and ConceptMaps**, allowing reuse across FLC-based IGs.
- **Terminology-first**


FLC enables both **human-readable** and **machine-executable** transformations, directly linked to terminology servers and structured with official FHIR packaging mechanisms.

---

## 📁 Folder Structure Overview

Recomended IG structure:

```bash
input/
├── fsh/                  # Standard FSH files defining models, mappings, and terminology used in the transformation
│   ├── logicalmodels/    # Logical models representing source and target structures
│   ├── logicalmaps/      # ConceptMaps used exclusively for logical (structural) mapping, not code translation
│   ├── conceptmaps/      # ConceptMaps referenced by the mapping logic. These may be defined locally or resolved dynamically via a FHIR Terminology Server.
│   ├── valuesets/        # ValueSets used during transformation; may be embedded or externally referenced via terminology service.
│   ├── codesystems/      # CodeSystems used for validation or mapping, either defined in the IG or fetched at runtime.
│   ├── structuremaps/    # FLC-specific StructureMap resources defining what to map and which Liquid template to use
│   ├── examples/         # Generated mapping result examples in valid FHIR (result from liquid converter converts to FSH)
├── flc/
│   ├── templates/        # Liquid templates that perform the actual transformation logic
│   ├── sampledata/       # Sample data files used for testing and demonstration of mappingss
flc-config.yaml           # Configuration file specifying sources, targets, templates, and transformation behavior
```

---

## 🔄 Dependencies

If your FLC templates use external terminology (e.g. EU Laboratory standards), make sure to declare these as dependencies in your `sushi-config.yaml`:

```yaml
dependencies:
  hl7.fhir.eu.laboratory: 0.1.0
  servicewell.fhir.flc.base: 1.0.0
```

All ConceptMaps referenced in FLC must be available in your local Ontoserver or terminology service.

---

## 🧩 Components Explained

- `StructureMap` (with profile `LiquidStructureMap`) is used to declare:
  - Source structure (e.g., `LabLMLimsRequestResponseSourceXML`)
  - Target structure (e.g., `Bundle` or `DiagnosticReport`)
  - Linked Liquid template file
  - Terminology packages

- `ConceptMap` links external/local source codes to FHIR target values
- `Liquid` templates transform parsed input → FHIR JSON using placeholders

---

## Getting Started as a FLC Developer TODO





# Contribute TODO
TODO: Explain how other users and developers can contribute to make your code better. 


## 📌 Placeholders to Complete

- [ ] Add narrative guides for developers and informaticians
- [ ] Describe how to publish your FLC IG using CI/CD

---

## 📬 Contact

This guide is maintained by **Service Well AB**. For feedback or inquiries:

📧 [info@servicewell.se](mailto:info@servicewell.se)
🌐 https://www.servicewell.se


 



