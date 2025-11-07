# 🧬 gnomAD Variant Query & Processing Toolkit

A lightweight toolkit of **Bash scripts** to automate querying and processing of variant-level data from the **gnomAD GraphQL API**.  
It fetches variant details, converts JSON results into tabular format, and merges them into a single master file — ready for downstream analysis.

---

## 📂 Scripts Overview

| Script | Purpose |
|:--------|:---------|
| `varID_query_gnomAD.sh` | Queries the gnomAD API for a list of variants and saves data as JSON files. |
| `varID_joint_flatten_gnomad.sh` | Converts gnomAD JSON outputs into tab-separated `.tsv` files. |
| `run_all_json_to_tsv.sh` | Batch-processes all JSON files in a folder and converts them to TSVs automatically. |
| `merge.sh` | Merges all TSV files into a single combined table for analysis. |

---

## ⚙️ Requirements
- `bash` (v4.0+)  
- `curl`  
- `jq`  
- Internet connection  

---

## 🚀 Workflow

### **Step 1 — Query Variants from gnomAD**
```bash
./varID_query_gnomAD.sh --vl variants.txt --data-type <exome|genome|joint>


🔹 Example
./gnomad_query.sh --vl my_variants.txt --data-type exome


⚙️ Options
Option	Description
--vl	Variant list file (one variant per line)
--data-type	Dataset type: exome, genome, or joint
--help	Show help message



📄 Input Example
1-55516888-G-A
2-1234567-T-C
10-8965432-C-T

📁 Output

All queried variants are saved in:

varStore/<variant_id>.json


Example:

varStore/1-55516888-G-A.json
