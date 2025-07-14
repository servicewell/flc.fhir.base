
# FLC Implementation Guide

Welcome to the Implementation Guide for **FHIR Liquid Conversion (FLC)**, a powerful, template-driven approach to converting data into FHIR using Liquid templates enriched with terminology mappings. This guide is maintained by **Service Well AB**, the owner and maintainer of this FLC framework and associated IG tooling.

---

## 🔍 What is FLC?

FHIR Liquid Conversion (FLC) is a structured, opinionated way of managing input-to-FHIR transformations using Liquid templates and standard FHIR IG tooling. It builds on Microsoft's [FHIR Converter](https://github.com/microsoft/FHIR-Converter) but introduces several key improvements:

### ✅ Advantages over StructureMap and Traditional FHIR Mapping:

| Feature | FHIR StructureMap | Microsoft FHIR Converter | **FLC** |
|--------|------------------|---------------------------|--------|
| Declarative Mapping Language | ✅ Yes | ❌ No | ✅ Yes (via Liquid) |
| Terminology Integration | ❌ Limited | ❌ Manual | ✅ Built-in via ConceptMaps |
| Testable / Versionable | ❌ Difficult | ✅ Via files | ✅ Full IG + test bundle |
| Canonical Support | ❌ Ad hoc | ❌ Local only | ✅ FHIR-native canonical references |
| Dependency Handling | ❌ None | ❌ Manual | ✅ Via `dependencies` in sushi-config |
| Reusable Across Projects | ❌ Poor | ✅ Kind of | ✅ IG-packaged, distributable |

FLC enables both **human-readable** and **machine-executable** transformations, directly linked to terminology servers and structured with official FHIR packaging mechanisms.

---

## 📁 Folder Structure Overview

This IG is structured as follows:

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

## 🚀 Getting Started as a Developer

👉 **Step 1: Clone or initialize this IG**

```bash
git clone https://github.com/servicewell/servicewell.fhir.flc.git
cd servicewell.fhir.flc
```

👉 **Step 2: Install SUSHI and build IG**

```bash
npm install -g fsh-sushi
sushi .
```

👉 **Step 3: Review Liquid templates**

Navigate to `input/flc/*.liquid` and connect them to the appropriate `StructureMap`

👉 **Step 4: Register terminology**

Make sure Ontoserver (or your FHIR terminology server) has the required ConceptMaps installed.

👉 **Step 5: Run conversion** (in your runtime environment)

Use your FHIR Liquid Engine (e.g., `fhir-tools` or custom runtime) to process:

```bash
fhir-tools flc-run --map converter-limsxml --input input/xml/sample.xml
```

---

## 📌 Placeholders to Complete

- [ ] Define `StructureDefinition` profiles for each supported XML input
- [ ] Include `TestScript` or `Bundle` with example input/output
- [ ] Add narrative guides for developers and informaticians
- [ ] Describe how to publish your FLC IG using CI/CD
- [ ] Document fallback logic / error handling in Liquid templates
- [ ] Add search index for available converters (in GUI or registry)

---

## 📬 Contact

This guide is maintained by **Service Well AB**. For feedback or inquiries:

📧 [info@servicewell.se](mailto:info@servicewell.se)
🌐 https://www.servicewell.se
