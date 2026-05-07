# Pharmacogenetics Nursing Education Analysis
![UFMG](https://img.shields.io/badge/INSTITUTION-UFMG-B20000?style=for-the-badge&logo=school)
![Focus](https://img.shields.io/badge/FOCUS-PHARMACOGENETICS-blue?style=for-the-badge&logo=dna)
![Status](https://img.shields.io/badge/STATUS-IN_PROGRESS-yellow?style=for-the-badge)

> **Data-driven analysis of pharmacogenetics education impact. | Projeto de análise de dados e impacto educacional em farmacogenética para estudantes de Enfermagem (UFMG).**

🇺🇸 *[Read this in English](README_EN.md)*

---

## ⌛ Status do Projeto
> **Fase Atual:** Etapa 2 Concluída - Coleta de Baseline e Análise Exploratória de Dados (EDA).
> *Próxima Fase: Intervenção Educativa (Aula/GD) e coleta de dados Pós-Intervenção (Maio/2026).*

---

Este projeto tem o objetivo de avaliar o conhecimento de estudantes de Enfermagem sobre farmacogenética e medir o impacto de uma intervenção educativa baseada em dados clínicos.

## 📌 Objetivo
Identificar e analisar, por meio de dados, lacunas na formação acadêmica sobre genética e farmacogenética e avaliar se uma intervenção educacional melhora o entendimento e a percepção dos estudantes sobre a aplicação clínica desses conhecimentos.

## ⚠️ O Problema (Baseado na Literatura Científica)
Estudos recentes apontam que enfermeiros apresentam baixa confiança na interpretação de testes genéticos e na aplicação da farmacogenética na prática clínica. A formação acadêmica tradicional ainda oferece pouca preparação para esses conhecimentos que são essenciais para a medicina de precisão, o que pode impactar a segurança do paciente e a tomada de decisão clínica.

> *Fonte: Análise bibliográfica de 17 artigos científicos ([ver pasta /docs](./docs)).*

## 🛠️ Tech Stack e Ferramentas
Este projeto utiliza uma abordagem estrita de *data-driven*, saindo das planilhas convencionais para programação estatística orientada a dados:

* **Coleta de Dados:** Google Forms (Questionários estruturados com escala Likert).
* **Linguagem Principal:** `R`
* **Limpeza e Manipulação de Dados:** `dplyr` / `tidyr` (Pacote `tidyverse` para renomeação de variáveis e pivotagem de dados).
* **Visualização de Dados:** `ggplot2` (Geração de gráficos de barras estáticos com foco em *storytelling* em saúde).
  
## 📕 Metodologia
O projeto segue uma abordagem de análise de dados educacionais, composta pelas etapas a seguir:

1.  **Revisão Bibliográfica:** Análise da literatura para identificação de lacunas de competência em genética e farmacogenética na Enfermagem.
2.  **Coleta de Dados (Baseline):** Aplicação de questionário estruturado antes da intervenção educativa (final do Módulo 1 da matéria de Fundamentos de Genética e Evolução).
3.  **Intervenção:** Realização de um Grupo de Discussão (GD), no final da disciplina (Módulo 3), baseado em artigos científicos, abordando conhecimentos de farmacogenética, segurança do paciente e tomada de decisão clínica.
4.  **Nova Coleta de Dados:** Aplicação de novo questionário depois da intervenção educativa.
5.  **Análise de Impacto:** Comparação dos dados pré e pós-intervenção, utilizando análise de dados e estatística descritiva para avaliar mudanças no conhecimento e na percepção dos estudantes sobre conhecimentos essenciais para a medicina de precisão.

🧱 Estrutura do Projeto
/docs: Revisão bibliográfica, recortes de artigos e planejamento da intervenção.
/data: Base de dados anonimizada em .csv (Baseline coletado em 07/05/2026).
/scripts: Código em R (script_pre_intervencao.R) com o pipeline de ETL e geração de gráficos.
/plots: Gráficos exportados em alta resolução (.png) analisando os mitos do senso comum na enfermagem.

---
*Projeto de Extensão - UFMG 2025/26*

---

**Por Inácio Vieira** *Estudante de Enfermagem na Universidade Federal de Minas Gerais (UFMG) | Iniciando em Análise de Dados em Saúde* [LinkedIn](https://www.linkedin.com/in/inaciosantosvieira/)

