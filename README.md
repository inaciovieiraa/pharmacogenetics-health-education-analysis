# Pharmacogenetics Nursing Education Analysis
![UFMG](https://img.shields.io/badge/INSTITUTION-UFMG-B20000?style=for-the-badge&logo=school)
![Focus](https://img.shields.io/badge/FOCUS-PHARMACOGENETICS-blue?style=for-the-badge&logo=dna)
![Status](https://img.shields.io/badge/STATUS-PHASE_1_COMPLETED-brightgreen?style=for-the-badge)

> **Data-driven analysis of pharmacogenetics education impact. | Projeto de análise de dados e impacto educacional em farmacogenética para estudantes de Enfermagem (UFMG).**

🇺🇸 *[Read this in English](README_EN.md)*

---

## ⌛ Status do Projeto
> **Fase Atual:** Fase 1 (Turma de Enfermagem) Concluída ✅
> *O pipeline de dados (ETL), a análise comparativa (Pré vs. Pós) e a exportação das visualizações foram finalizados com sucesso. O repositório segue ativo para expansão metodológica futura com novas turmas de Enfermagem e possível inclusão do curso de Farmácia.*

---

Este projeto tem o objetivo de avaliar o conhecimento de estudantes de Enfermagem sobre farmacogenética e medir o impacto de uma intervenção educativa baseada em dados clínicos, utilizando uma abordagem estruturada de análise de dados e estatística descritiva.

## 📌 Objetivo
Identificar e analisar, por meio de dados, lacunas na formação acadêmica sobre genética e farmacogenética, avaliando quantitativamente se uma intervenção educacional melhora o entendimento dos estudantes sobre a segurança do paciente e a tomada de decisão clínica.

## ⚠️ O Problema (Baseado na Literatura Científica)
Estudos recentes apontam que enfermeiros apresentam baixa confiança na interpretação de testes genéticos e na aplicação da farmacogenética na prática clínica. A formação acadêmica tradicional ainda oferece pouca preparação para esses conhecimentos que são essenciais para a medicina de precisão, o que pode impactar diretamente a segurança do paciente à beira do leito.

> *Fonte: Análise bibliográfica de 17 artigos científicos ([ver pasta /docs](./docs)).*

## 🏆 Principais Resultados (Data Insights - Fase 1)
A extração e análise dos dados após a intervenção educacional revelaram uma quebra clara de mitos do senso comum e alta retenção de condutas clínicas de segurança:

* **Quebra do Mito da Bula:** A concordância total de que "seguir rigorosamente a bula evita intoxicação" caiu drasticamente, dando lugar a uma discordância de **48.3%** no pós-intervenção.
![Mito da Bula](./plots/02_resultados_finais/01_mito_bula.png)

* **Mudança de Paradigma (Alergia vs. Metabolismo):** A visão inicial de que reações severas na primeira dose são sempre "alergias" foi revertida, com a maioria da turma passando a discordar dessa premissa após a intervenção educacional.
![Alergia ou Metabolismo](./plots/02_resultados_finais/04_alergia_ou_metabolismo.png)

* **Retenção Clínica Prática:** **100%** dos alunos identificaram corretamente o risco letal de overdose no caso prático de metabolismo ultrarrápido da Codeína (CYP2D6), e **93.1%** acertaram a conduta de redução drástica de dose no caso da TPMT.
<p>
  <img src="./plots/02_resultados_finais/07_pos_caso_codeina.png" width="45%" />
  <img src="./plots/02_resultados_finais/08_pos_caso_tpmt.png" width="45%" />
</p>

## 🛠️ Tech Stack e Ferramentas
Este projeto utiliza programação estatística orientada a dados para extrair insights diretamente dos questionários:
* **Coleta de Dados:** Google Forms (Questionários estruturados com escala Likert).
* **Linguagem Principal:** `R`
* **Limpeza e Manipulação de Dados:** `dplyr` / `tidyr` (Pacote `tidyverse` para união de bases, renomeação de variáveis e fatoração).
* **Visualização de Dados:** `ggplot2` (Geração de gráficos comparativos estáticos com foco em *storytelling* em saúde e exportação automatizada via `ggsave` em 300 DPI).

## 📕 Metodologia
O projeto segue uma abordagem de análise de dados educacionais composta pelas etapas a seguir:
1. **Revisão Bibliográfica:** Análise da literatura para identificação de lacunas de competência em genética e farmacogenética na Enfermagem.
2. **Coleta de Dados (Baseline):** Questionário estruturado antes da intervenção ($n = 34$ participantes).
3. **Intervenção Educativa (Aula Teórica + GD):** Realização de uma aula expositiva ministrada pelo professor titular sobre os fundamentos da farmacogenética, seguida por um Grupo de Discussão (GD) ativo no final da disciplina (Módulo 3). O GD foi focado na aplicação prática de artigos científicos, abordando segurança do paciente e tomada de decisão clínica.
4. **Coleta Pós-Intervenção:** Novo questionário para pareamento de respostas, aplicado após a intervenção educacional ser 100% concluída ($n = 29$ participantes).
5. **Análise de Impacto:** Uso de script unificado em R para limpar, cruzar e gerar visualizações com a finalidade de provar a evolução do raciocínio clínico da turma.

## 🧱 Estrutura do Repositório
* [**`/docs`**](./docs): Revisão bibliográfica, recortes de artigos e planejamento da intervenção.
* [**`/data`**](./data): Bases de dados anonimizadas em `.csv` (Baseline e Pós-intervenção coletados em Maio/2026).
* [**`/scripts`**](./scripts): Código completo em `R` contendo o pipeline unificado de ETL e geração de gráficos.
* [**`/plots`**](./plots): Organizado em subpastas organizadas:
  * [`/01_pre_intervencao`](./plots/01_pre_intervencao): Análise exploratória inicial (EDA).
  * [`/02_resultados_finais`](./plots/02_resultados_finais): Gráficos comparativos e de retenção pós-aula.

## 🚀 Próximos Passos & Escalabilidade
Este projeto foi desenhado para ser sustentável, incremental e facilmente replicável:
1. **Análise Longitudinal na Enfermagem:** Aplicação do mesmo pipeline para as turmas dos próximos semestres do curso de Enfermagem, permitindo avaliar o impacto educacional a longo prazo e expandir a amostra de dados.
2. **Expansão Multidisciplinar:** Refatoração futura do script para integrar e comparar dados de outros cursos da saúde (como a Farmácia), mapeando a variabilidade de percepção entre diferentes núcleos profissionais.

---
*Projeto de Extensão - UFMG 2025/26*

---

**Por Inácio Vieira** *Estudante de Enfermagem na Universidade Federal de Minas Gerais (UFMG) | Iniciando em Análise de Dados em Saúde* [LinkedIn](https://www.linkedin.com/in/inaciosantosvieira/)
**Professor Titular / Orientação:** Prof. Marcelo Rizzatti Luizon [Lattes](http://lattes.cnpq.br/1264026443614775)
