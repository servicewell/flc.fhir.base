
# FLC Implementation Guide

Welcome to the Implementation Guide for **FHIR Liquid Conversion (FLC)**, a powerful, template-driven approach to converting data into FHIR using Liquid templates enriched with terminology mappings. This guide is maintained by **Service Well AB**, the owner and maintainer of this FLC framework and associated IG tooling.

---

## 🔍 What is FLC?

FHIR Liquid Conversion (FLC) is a structured, opinionated way of managing input-to-FHIR transformations using Liquid templates and standard FHIR IG tooling. It builds on Microsoft's [FHIR Converter](https://github.com/microsoft/FHIR-Converter) but introduces several key improvements:

### ✅ Advantages over StructureMap and Traditional FHIR Mapping:

| Feature | Microsoft FHIR Converter | **FLC** |
|----------|---------------------------|--------|
| Declarative Mapping Language  | ✅ Liquid | ✅ Liquid + FHIR metadata |
| Terminology Integration | ❌ Manual | ✅ Built-in FHIR Terminology support |
| Testable / Versionable  | ✅ File-based testing | ✅ Full IG + test bundle |
| Canonical Support  | ❌ Local only | ✅ Fully FHIR-native |
| Dependency Handling | ❌ Manual imports | ✅ Via `dependencies` in `sushi-config.yaml` |
| Reusable Across Projects | ✅ Azure Container Registry | ✅ IG-packaged and distributable |

---

FLC enables both **human-readable** and **machine-executable** transformations, directly linked to terminology servers and structured with official FHIR packaging mechanisms.

Overall, FLC provides a more **FHIR-native**, **version-controlled**, and **distributable** conversion platform that bridges informatics and IT development effectively.

---

## 🧩 Components Explained

- `StructureMap` (with profile `LiquidStructureMap`) is used to declare:
  - Source structure (e.g., `FLCSourcePatient`)
  - Target structure (e.g., `Patient`)
  - Linked Liquid template file (e.g., `ExamplePatient.liquid`)
  - Terminology packages (ToDo)

- `ConceptMap` links external/local source codes to FHIR target values
- `Liquid` templates transform parsed input → FHIR JSON using placeholders

---

## 📬 Contact

This guide is maintained by **Service Well AB**. For feedback or inquiries:

📧 [info@servicewell.se](mailto:info@servicewell.se)
🌐 https://www.servicewell.se
