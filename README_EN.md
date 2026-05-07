# Pharmacogenetics Nursing Education Analysis
![UFMG](https://img.shields.io/badge/INSTITUTION-UFMG-B20000?style=for-the-badge&logo=school)
![Focus](https://img.shields.io/badge/FOCUS-PHARMACOGENETICS-blue?style=for-the-badge&logo=dna)
![Status](https://img.shields.io/badge/STATUS-IN_PROGRESS-yellow?style=for-the-badge)

> **Data-driven analysis of pharmacogenetics education impact among Nursing students at the Federal University of Minas Gerais (UFMG).**

🇧🇷 *[Leia isso em Português](README.md)*

---

## ⌛ Project Status
> **Current Phase:** Stage 2 Completed - Baseline Data Collection and Exploratory Data Analysis (EDA).
> *Next Phase: Educational Intervention (Discussion Group) and Post-Intervention data collection (May 2026).*

---

This project aims to assess the knowledge of Nursing students regarding pharmacogenetics and measure the impact of a data-driven clinical educational intervention.

## 📌 Objective
To identify and analyze data-driven gaps in academic training concerning genetics and pharmacogenetics, evaluating whether an educational intervention improves students' understanding and perception of the clinical application of this knowledge.

## ⚠️ The Problem (Evidence-Based)
Recent studies indicate that nurses often show low confidence in interpreting genetic tests and applying pharmacogenetics in clinical practice. Traditional academic training still offers limited preparation for these essential components of precision medicine, which can impact patient safety and clinical decision-making.

> *Source: Literature review of 17 scientific articles ([see /docs folder](./docs)).*

## 🛠️ Tech Stack & Tools
This project follows a strict data-driven approach, moving beyond conventional spreadsheets to data-oriented statistical programming:

* **Data Collection:** Google Forms (Structured questionnaires using Likert scales).
* **Primary Language:** `R`
* **Data Cleaning & Manipulation:** `dplyr` / `tidyr` (`tidyverse` package for variable renaming and data pivoting).
* **Data Visualization:** `ggplot2` (Static bar charts focused on healthcare storytelling).
  
## 📕 Methodology
The project follows an educational data analysis approach, consisting of the following steps:

1.  **Literature Review:** Analysis of existing literature to identify competence gaps in genetics and pharmacogenetics within Nursing.
2.  **Baseline Data Collection:** Application of a structured questionnaire before the educational intervention (at the end of the Genetics and Evolution module).
3.  **Intervention:** Implementation of a Discussion Group (DG) based on scientific articles, covering pharmacogenetics, patient safety, and clinical decision-making.
4.  **Follow-up Data Collection:** Application of a new questionnaire after the educational intervention.
5.  **Impact Analysis:** Comparison of pre- and post-intervention data using descriptive statistics to evaluate changes in knowledge and perception regarding precision medicine essentials.

## 🧱 Project Structure
* [**`/docs`**](./docs): Literature review, article excerpts, and intervention planning.
* [**`/data`**](./data): Anonymized database in `.csv` (Baseline collected on May 7, 2026).
* [**`/scripts`**](./scripts): R code ([`script_pre_intervencao.R`](./scripts/script_pre_intervencao.R)) containing the full ETL pipeline and plot generation.
* [**`/plots`**](./plots): High-resolution charts (.png) analyzing common healthcare myths and baseline results.

---
*Extension Project - UFMG 2025/26*

---

**By Inácio Vieira** *Nursing Student at the Federal University of Minas Gerais (UFMG) | Aspiring Health Data Scientist* [LinkedIn](https://www.linkedin.com/in/inaciosantosvieira/)
