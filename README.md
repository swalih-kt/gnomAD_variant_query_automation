# 🧬 gnomAD Variant Query Automation

A lightweight **Bash script** to automatically fetch variant-level data from the **gnomAD GraphQL API**.  
It allows querying multiple variants at once and retrieves key genomic information such as allele frequency, counts, and population statistics.

---

## 🚀 Features
- Supports **exome**, **genome**, and **joint** datasets  
- Queries **multiple variants** in one go  
- Fetches AC, AN, AF, population data, and transcript annotations  
- Saves results as individual **JSON** files in `varStore/`  
- Simple command-line interface  

---

## ⚙️ Requirements
- `bash` (v4.0+)  
- `curl`  
- Internet connection  

---

## 🧠 Usage
```bash
./gnomad_query.sh --vl variants.txt --data-type <exome|genome|joint>



## Example
```bash
./gnomad_query.sh --vl my_variants.txt --data-type exome

