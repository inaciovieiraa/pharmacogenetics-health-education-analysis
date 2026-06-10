# Pharmacogenetics Health Education Analysis
![UFMG](https://img.shields.io/badge/INSTITUTION-UFMG-B20000?style=for-the-badge&logo=school)
![Focus](https://img.shields.io/badge/FOCUS-PHARMACOGENETICS-blue?style=for-the-badge&logo=dna)
![Status](https://img.shields.io/badge/STATUS-ACTIVE%20RESEARCH%20PROJECT-orange?style=for-the-badge)

> **Data-driven analysis of pharmacogenetics education impact across multidisciplinary health courses. | Projeto de análise de dados e impacto educacional em farmacogenética para estudantes da área da saúde (UFMG).**

🇧🇷 *[Leia isso em Português](README.md)*

---

## ⌛ Project Status
> **Nursing (2026/1) ✅**
> *Pre-intervention questionnaire application, Discussion Group (DG), post-intervention collection, and comparative analysis successfully completed.*
>
> **Pharmacy (2026/1) ⏳**
> *Baseline collection and analysis (Pre-intervention) completed. Awaiting educational intervention and post-intervention data collection.*
>
> **Biomedicine (2026/1) ⏳**
> *Baseline collection and analysis (Pre-intervention) completed. Awaiting definition of educational strategy and post-intervention data collection.*

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

### 📊 Preliminary Results (Baseline)
The Pharmacy and Biomedicine classes presented distinct profiles before the educational intervention, revealing relevant differences between conceptual mastery and practical application of knowledge.

* **Pharmacy:** Although students master the theory (100% correct answers on the concept), the class was split when applying the clinical practice of Allergy vs. Metabolism. Furthermore, **65.2%** of the students showed a strong reliance on common sense regarding the "Package Insert Myth".
<p>
  <img src="./plots/farmacia/pre/q6_conceito_farmacogenetica_PRE.png" width="45%" />
  <img src="./plots/farmacia/pre/q4_alergia_metabolismo_PRE.png" width="45%" />
</p>

* **Biomedicine:** Faced with clinical doubt in the Allergy vs. Metabolism question, the largest portion of the Biomedicine class (**38.9%**) preferred to remain "Neutral" (Level 3) rather than guessing an answer. The "Package Insert Myth" still drags **55.6%** of the class into error.
<p>
  <img src="./plots/biomedicina/pre/q6_conceito_farmacogenetica_PRE.png" width="45%" />
  <img src="./plots/biomedicina/pre/04_alergia_ou_metabolismo.png" width="45%" />
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

## 🚀 Next Steps

1. Initiate the educational intervention for the Pharmacy class.
2. Collect post-educational intervention data for the Pharmacy class.
3. Perform the Pre vs. Post comparative analysis for Pharmacy using the established pipeline.
4. Define whether to conduct an educational intervention using Discussion Groups for Biomedicine (as done with Nursing and planned for Pharmacy), or to use only the pharmacogenetics lecture as the intervention medium. This would allow for a specific analysis of the isolated impact of Discussion Groups on students' knowledge acquisition.
5. Finalize baseline data collection for the Biomedicine class.
6. Compare the educational profiles across Nursing, Pharmacy, and Biomedicine.

## ▶️ How to Execute the Analysis (Full Portability)
This project was developed in a fully automated and structured manner. To ensure that relative paths work on your machine without requiring any code alterations, follow the professional standard for running R projects:

### 1. Download the Complete Project
Instead of downloading loose files, download the entire repository structure to keep the pipeline intact:
* Click the green **Code** button at the top of this page and select **Download ZIP** (then extract the folder on your computer).

### 2. Open the Project in RStudio
Open your RStudio. In the top menu, go to **File > New Project > Existing Directory**.
Click **Browse**, navigate to the project folder you downloaded/extracted, and click **Create Project**.

### 3. Run the Script Automatically
In the RStudio files tab, open the `/scripts` folder and select the file corresponding to the course you want to analyze (e.g., `03_pre_farmacia.R`).
Ensure the respective `.csv` database is inside the `/data` folder.

Press `Ctrl + A` to select all the code and click **Run** (or use the shortcut `Ctrl + Enter`).
The pipeline will execute the entire process autonomously:

- Import and cleaning of raw data (ETL);
- Standardization of variables and factoring of Likert scales;
- Automated generation and export of high-resolution charts directly to the corresponding `/plots` folder via `ggsave()`.

### Reproducibility and Scalability Notes
- **Equivalent Structure:** The scripts share strictly the same statistical logic, changing only the specific titles and wording adapted for the competencies of each professional category (Nursing, Pharmacy, or Biomedicine).
- **No Code Alteration Required:** If new classes or data are added to the project, you do not need to modify the code logic. Simply replace the old file in the `/data` folder with a new `.csv` file of the same name and run the script again. The rest of the pipeline will remain unchanged.

---
*Extension Project - UFMG 2025/26*

---

**By Inácio Vieira** *Nursing Student at the Federal University of Minas Gerais (UFMG) | Starting in Healthcare Data Analysis* [LinkedIn](https://www.linkedin.com/in/inaciosantosvieira/)
**Head Professor / Advisor:** Prof. Marcelo Rizzatti Luizon [Lattes](http://lattes.cnpq.br/1264026443614775)
