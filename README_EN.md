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
> *Baseline data collection (Pre-intervention) and analysis completed. Awaiting the educational intervention and Discussion Group session to proceed with cross-analysis against post-intervention data.*

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

### 📊 Preliminary Results (Baseline - Phase 2: Pharmacy)
Initial exploratory analysis suggests that conceptual knowledge of pharmacogenetics may not automatically translate into safety in clinical decision-making.

* **Split in Clinical Reasoning (Allergy vs. Metabolism):** Although the class demonstrated full mastery of the theoretical concepts (100% correct answers on Q6), when faced with practical reasoning, the class was split. A significant portion remained "neutral" (3) or aligned with common sense, confusing immune responses with metabolic toxicity.
<p>
  <img src="./plots/farmacia/pre/q6_conceito_farmacogenetica_PRE.png" width="45%" />
  <img src="./plots/farmacia/pre/q4_alergia_metabolismo_PRE.png" width="45%" />
</p>

## 🛠️ Tech Stack & Tools
This project uses data-driven statistical programming to extract insights directly from the questionnaires:
* **Data Collection:** Google Forms (Structured questionnaires with Likert scale).
* **Main Language:** `R`
* **Data Cleaning & Manipulation:** `dplyr` / `tidyr` (`tidyverse` package for joining databases, variable renaming, and factoring).
* **Data Visualization:** `ggplot2` (Generation of static comparative charts focused on healthcare *storytelling* and automated export via `ggsave` in 300 DPI).

## 📕 Methodology
The project follows an educational data analysis approach consisting of the following steps:
1. **Literature Review:** Analysis of scientific literature to identify knowledge gaps in genetics and pharmacogenetics among healthcare students and professionals.
2. **Data Collection (Baseline):** Structured questionnaire before the intervention.
3. **Educational Intervention (Theoretical Class + DG):** A lecture given by the head professor on the fundamentals of pharmacogenetics, followed by an active Discussion Group (DG). The DG focuses on the practical application of real clinical cases.
4. **Post-Intervention Collection:** New questionnaire for answer pairing, applied after the educational intervention is 100% completed.
5. **Impact Analysis:** Use of a unified R script to clean, cross-reference, and generate visualizations to assess changes in clinical reasoning.

## 🧱 Repository Structure
* [**`/docs`**](./docs): Literature review, article excerpts, and intervention planning.
* [**`/data`**](./data): Anonymized `.csv` databases separated by course.
* [**`/scripts`**](./scripts): Complete `R` code containing the unified ETL pipeline and chart generation.
* [**`/plots`**](./plots): High-resolution exported charts, organized by research phases.

## 🚀 Next Steps & Scalability
This project was designed to be sustainable, incremental, and replicable:
1. **Completion of Phase 2 (Pharmacy):** Post-intervention questionnaire application, focusing on correcting the clinical polarity observed in the baseline.
2. **Multidisciplinary Expansion (Phase 3):** Start the ETL pipeline for baseline data collection for the **Biomedicine** class, mapping perception variability across different professional cores (Nursing vs. Pharmacy vs. Biomedicine).

---
*Extension Project - UFMG 2025/26*

---

**By Inácio Vieira** *Nursing Student at the Federal University of Minas Gerais (UFMG) | Starting in Healthcare Data Analysis* [LinkedIn](https://www.linkedin.com/in/inaciosantosvieira/)
