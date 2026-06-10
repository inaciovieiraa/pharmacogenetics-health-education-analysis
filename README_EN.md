# Pharmacogenetics Nursing Education Analysis
![UFMG](https://img.shields.io/badge/INSTITUTION-UFMG-B20000?style=for-the-badge&logo=school)
![Focus](https://img.shields.io/badge/FOCUS-PHARMACOGENETICS-blue?style=for-the-badge&logo=dna)
![Status](https://img.shields.io/badge/STATUS-PHASE_2_IN_PROGRESS-orange?style=for-the-badge)

> **Data-driven analysis of pharmacogenetics education impact. | Data analysis and educational impact project in pharmacogenetics for healthcare students (UFMG).**

🇧🇷 *[Leia isso em Português](README.md)*

---

## ⌛ Project Status
> **Phase 1 (Nursing Class 2026/1):** Completed ✅
> *The data pipeline (ETL), comparative analysis (Pre vs. Post), and visualization exports were successfully finalized.*
>
> **Phase 2 (Pharmacy Class 2026/1):** In Progress ⏳
> *The repository remains active and in a methodological expansion phase. Baseline data collection (Pre-intervention) for the Pharmacy course has already begun, aiming for a multidisciplinary cross-analysis.*

---

This project aims to evaluate healthcare students' knowledge about pharmacogenetics and measure the impact of educational interventions based on clinical data, using a structured approach of data analysis and descriptive statistics.

## 📌 Objective
To identify and analyze, through data, gaps in academic training regarding genetics and pharmacogenetics, quantitatively evaluating whether an educational intervention improves students' understanding of patient safety and clinical decision-making.

## ⚠️ The Problem (Based on Scientific Literature)
Recent studies point out that the gap in precision medicine teaching is not an isolated problem, but a systemic failure in the training of the entire multidisciplinary healthcare team. Nurses, pharmacists, and other professionals show low confidence in interpreting genetic tests and applying pharmacogenetics in practice. Traditional academic training still offers little preparation to deal with this information, which directly impacts the prevention of adverse reactions and patient safety.

> *Source: Bibliographic analysis of 17 scientific articles ([see /docs folder](./docs)).*

## 🏆 Key Results (Data Insights - Phase 1: Nursing)
Data extraction and analysis after the first educational intervention revealed a clear breakdown of common sense myths and high retention of clinical safety protocols:

* **Breaking the Package Insert Myth:** Total agreement that "strictly following the package insert avoids intoxication" dropped drastically, giving way to a **48.3%** disagreement post-intervention.
![Mito da Bula](./plots/enfermagem/pos/01_mito_bula.png)

* **Paradigm Shift (Allergy vs. Metabolism):** The initial view that severe reactions on the first dose are always "allergies" was reversed, with the majority of the class disagreeing with this premise after the educational intervention.
![Alergia ou Metabolismo](./plots/enfermagem/pos/04_alergia_ou_metabolismo.png)

* **Practical Clinical Retention:** **100%** of the students correctly identified the lethal overdose risk in the practical case of Codeine ultrarapid metabolism (CYP2D6), and **93.1%** chose the correct drastic dose reduction protocol in the TPMT case.
<p>
  <img src="./plots/enfermagem/pos/07_pos_caso_codeina.png" width="45%" />
  <img src="./plots/enfermagem/pos/08_pos_caso_tpmt.png" width="45%" />
</p>

## 🛠️ Tech Stack & Tools
This project uses data-driven statistical programming to extract insights directly from the questionnaires:
* **Data Collection:** Google Forms (Structured questionnaires with Likert scale).
* **Main Language:** `R`
* **Data Cleaning & Manipulation:** `dplyr` / `tidyr` (`tidyverse` package for joining databases, variable renaming, and factoring).
* **Data Visualization:** `ggplot2` (Generation of static comparative charts focused on healthcare *storytelling* and automated export via `ggsave` in 300 DPI).

## 📕 Methodology
The project follows an educational data analysis approach consisting of the following steps:
1. **Literature Review:** Literature analysis to identify competency gaps in genetics in healthcare.
2. **Data Collection (Baseline):** Structured questionnaire before the intervention.
3. **Educational Intervention (Theoretical Class + DG):** A lecture given by the head professor on the fundamentals of pharmacogenetics, followed by an active Discussion Group (DG). The DG focuses on the practical application of real clinical cases.
4. **Post-Intervention Collection:** New questionnaire for answer pairing, applied after the educational intervention is 100% completed.
5. **Impact Analysis:** Use of a unified R script to clean, cross-reference, and generate visualizations to prove the evolution of the classes' clinical reasoning.

## 🧱 Repository Structure
* [**`/docs`**](./docs): Literature review, article excerpts, and intervention planning.
* [**`/data`**](./data): Anonymized `.csv` databases separated by course.
* [**`/scripts`**](./scripts): Complete `R` code containing the unified ETL pipeline and chart generation.
* [**`/plots`**](./plots): High-resolution exported charts, organized by research phases.

## 🚀 Next Steps & Scalability
This project was designed to be sustainable, incremental, and replicable:
1. **Multidisciplinary Expansion (In progress):** Refactoring the ETL script to integrate newly collected data from the Pharmacy course, mapping the variability in perception and evolution between different professional cores (Nursing vs. Pharmacy).
2. **Longitudinal Analysis:** Continuous application of the pipeline to classes in upcoming semesters, allowing the evaluation of long-term educational impact and expanding the *N* of the data sample.

---
*Extension Project - UFMG 2025/26*

---

**By Inácio Vieira** *Nursing Student at the Federal University of Minas Gerais (UFMG) | Starting in Healthcare Data Analysis* [LinkedIn](https://www.linkedin.com/in/inaciosantosvieira/)
**Head Professor / Advisor:** Prof. Marcelo Rizzatti Luizon [Lattes](http://lattes.cnpq.br/1264026443614775)
