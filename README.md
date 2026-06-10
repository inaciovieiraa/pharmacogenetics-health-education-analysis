# Pharmacogenetics Nursing Education Analysis
![UFMG](https://img.shields.io/badge/INSTITUTION-UFMG-B20000?style=for-the-badge&logo=school)
![Focus](https://img.shields.io/badge/FOCUS-PHARMACOGENETICS-blue?style=for-the-badge&logo=dna)
![Status](https://img.shields.io/badge/STATUS-PHASE_2_IN_PROGRESS-orange?style=for-the-badge)

> **Data-driven analysis of pharmacogenetics education impact. | Projeto de análise de dados e impacto educacional em farmacogenética para estudantes da área da saúde (UFMG).**

🇺🇸 *[Read this in English](README_EN.md)*

---

## ⌛ Status do Projeto
> **Fase 1 (Turma de Enfermagem 2026/1):** Concluída ✅
> *O pipeline de dados (ETL), a análise comparativa (Pré vs. Pós) e a exportação das visualizações foram finalizados com sucesso.*
>
> **Fase 2 (Turma de Farmácia 2026/1):** Em Andamento ⏳
> *Coleta e análise da baseline (Pré-intervenção) concluídas. Aguardando a aplicação da aula e do Grupo de Discussão para o cruzamento de dados com a coleta pós-intervenção.*
---

Este projeto tem o objetivo de avaliar o conhecimento de estudantes da área da saúde sobre farmacogenética e medir o impacto de intervenções educativas baseadas em dados clínicos, utilizando uma abordagem estruturada de análise de dados e estatística descritiva.

## 📌 Objetivo
Identificar e analisar, por meio de dados, lacunas na formação acadêmica sobre genética e farmacogenética, avaliando quantitativamente se uma intervenção educacional melhora o entendimento dos estudantes sobre a segurança do paciente e a tomada de decisão clínica.

## ⚠️ O Problema (Baseado na Literatura Científica)
Estudos recentes apontam que a defasagem no ensino de medicina de precisão não é um problema isolado, mas uma falha sistêmica na formação de toda a equipe multidisciplinar de saúde. Enfermeiros, farmacêuticos e outros profissionais apresentam baixa confiança na interpretação de testes genéticos e na aplicação da farmacogenética na prática. A formação acadêmica tradicional ainda oferece pouca preparação para lidar com essas informações, o que impacta diretamente a prevenção de reações adversas e a segurança do paciente.

> *Fonte: Análise bibliográfica de 17 artigos científicos ([ver pasta /docs](./docs)).*

## 🏆 Principais Resultados (Data Insights - Fase 1: Enfermagem)
A extração e análise dos dados após a primeira intervenção educacional revelaram uma quebra clara de mitos do senso comum e alta retenção de condutas clínicas de segurança:

* **Quebra do Mito da Bula:** A concordância total de que "seguir rigorosamente a bula evita intoxicação" caiu drasticamente, dando lugar a uma discordância de **48.3%** no pós-intervenção.
![Mito da Bula](./plots/enfermagem/pos/01_mito_bula.png)

* **Mudança de Paradigma (Alergia vs. Metabolismo):** A visão inicial de que reações severas na primeira dose são sempre "alergias" foi revertida, com a maioria da turma passando a discordar dessa premissa após a intervenção educacional.
![Alergia ou Metabolismo](./plots/enfermagem/pos/04_alergia_ou_metabolismo.png)

* **Retenção Clínica Prática:** **100%** dos alunos identificaram corretamente o risco letal de overdose no caso prático de metabolismo ultrarrápido da Codeína (CYP2D6), e **93.1%** acertaram a conduta de redução drástica de dose no caso da TPMT.
<p>
  <img src="./plots/enfermagem/pos/07_pos_caso_codeina.png" width="45%" />
  <img src="./plots/enfermagem/pos/08_pos_caso_tpmt.png" width="45%" />
</p>

### 📊 Resultados Preliminares (Baseline - Fase 2: Farmácia)
A análise exploratória inicial sugere que o domínio conceitual da farmacogenética pode não se traduzir automaticamente em segurança na tomada de decisão clínica.

* **A Divisão no Raciocínio Clínico (Alergia vs. Metabolismo):** Embora a turma tenha gabaritado o conceito teórico da disciplina (100% de acerto na Q6), ao serem confrontados com o raciocínio prático, a sala se rachou. Uma parcela massiva ficou no "neutro" (3) ou concordou com o senso comum, confundindo resposta imune com toxicidade metabólica.
<p>
  <img src="./plots/farmacia/pre/q6_conceito_farmacogenetica_PRE.png" width="45%" />
  <img src="./plots/farmacia/pre/q4_alergia_metabolismo_PRE.png" width="45%" />
</p>

## 🛠️ Tech Stack e Ferramentas
Este projeto utiliza programação estatística orientada a dados para extrair insights diretamente dos questionários:
* **Coleta de Dados:** Google Forms (Questionários estruturados com escala Likert).
* **Linguagem Principal:** `R`
* **Limpeza e Manipulação de Dados:** `dplyr` / `tidyr` (Pacote `tidyverse` para união de bases, renomeação de variáveis e fatoração).
* **Visualização de Dados:** `ggplot2` (Geração de gráficos comparativos estáticos com foco em *storytelling* em saúde e exportação automatizada via `ggsave` em 300 DPI).

## 📕 Metodologia
O projeto segue uma abordagem de análise de dados educacionais composta pelas etapas a seguir:
1. **Revisão Bibliográfica:** Análise de literatura científica para identificação de lacunas de conhecimento em genética e farmacogenética entre estudantes e profissionais da área da saúde.
2. **Coleta de Dados (Baseline):** Questionário estruturado antes da intervenção.
3. **Intervenção Educativa (Aula Teórica + GD):** Realização de uma aula expositiva ministrada pelo professor titular sobre os fundamentos da farmacogenética, seguida por um Grupo de Discussão (GD) ativo. O GD é focado na aplicação prática de casos clínicos reais.
4. **Coleta Pós-Intervenção:** Novo questionário para pareamento de respostas, aplicado após a intervenção educacional ser 100% concluída.
5. **Análise de Impacto:** Uso de script unificado em R para limpar, cruzar e gerar visualizações com a finalidade de avaliar mudanças no raciocínio clínico das turmas.

## 🧱 Estrutura do Repositório
* [**`/docs`**](./docs): Revisão bibliográfica, recortes de artigos e planejamento das intervenções.
* [**`/data`**](./data): Bases de dados anonimizadas em `.csv` separadas por curso.
* [**`/scripts`**](./scripts): Código completo em `R` contendo o pipeline unificado de ETL e geração de gráficos.
* [**`/plots`**](./plots): Gráficos exportados em alta resolução, organizados pelas fases da pesquisa.

## 🚀 Próximos Passos & Escalabilidade
Este projeto foi desenhado para ser sustentável, incremental e replicável:
1. **Finalização da Fase 2 (Farmácia):** Aplicação do questionário pós-intervenção, focando na correção da polaridade clínica vista na baseline.
2. **Expansão Multidisciplinar (Fase 3):** Iniciar o pipeline de coleta e análise da baseline para a turma de **Biomedicina**, mapeando a variabilidade de percepção entre os diferentes núcleos profissionais (Enfermagem vs. Farmácia vs. Biomedicina).
---
*Projeto de Extensão - UFMG 2025/26*

---

**Por Inácio Vieira** *Estudante de Enfermagem na Universidade Federal de Minas Gerais (UFMG) | Iniciando em Análise de Dados em Saúde* [LinkedIn](https://www.linkedin.com/in/inaciosantosvieira/)
