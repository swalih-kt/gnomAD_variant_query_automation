# 🧬 gnomAD Variant Query Automation

This repository contains a **Bash script** that automates variant-level data retrieval from the **gnomAD (Genome Aggregation Database)** using the **GraphQL API**.  
It enables users to easily query allele frequency, count, and population-level data for multiple variants — directly from the command line.

---

## 📖 Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Input Format](#input-format)
- [Output](#output)
- [Script Workflow](#script-workflow)
- [Example Run](#example-run)
- [Author](#author)
- [License](#license)

---

## 🔍 Overview

This script streamlines the process of querying variant information from gnomAD’s API.  
Instead of manually entering each variant on the gnomAD website, you can provide a text file containing multiple variant IDs, and the script will:
- Query gnomAD for each variant
- Retrieve variant details, population frequencies, and transcript annotations
- Save the results as structured JSON files in a local directory

It is particularly useful for researchers and bioinformaticians performing large-scale **variant frequency analysis** or **cross-population comparisons**.

---

## 🚀 Features

✅ Supports **exome**, **genome**, and **joint** data types  
✅ Queries **multiple variants** in a single run  
✅ Retrieves:
- Chromosome, position, reference and alternate alleles  
- Allele count (AC), allele number (AN), allele frequency (AF)  
- Population-specific frequency data  
- Transcript-level details (gene symbol, consequence, LOF, etc.)  

✅ Automatically saves results as JSON files  
✅ Skips variants not present in gnomAD  
✅ Lightweight — uses only `bash` and `curl`

---

## ⚙️ Requirements

- **Bash** (v4.0 or later)
- **curl**
- Internet connection (for accessing the gnomAD GraphQL API)

---

## 💾 Installation

Clone the repository and make the script executable:

```bash
git clone https://github.com/<your-username>/gnomAD_variant_query_automation.git
cd gnomAD_variant_query_automation
chmod +x gnomad_query.sh




