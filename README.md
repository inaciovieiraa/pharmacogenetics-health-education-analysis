# Pharmacogenetics Health Education Analysis
![UFMG](https://img.shields.io/badge/INSTITUTION-UFMG-B20000?style=for-the-badge&logo=school)
![Focus](https://img.shields.io/badge/FOCUS-PHARMACOGENETICS-blue?style=for-the-badge&logo=dna)
![Status](https://img.shields.io/badge/STATUS-ACTIVE%20RESEARCH%20PROJECT-orange?style=for-the-badge)

> **Data-driven analysis of pharmacogenetics education impact. | Projeto de análise de dados e impacto educacional em farmacogenética para estudantes da área da saúde (UFMG).**

🇺🇸 *[Read this in English](README_EN.md)*

---

## ⌛ Status do Projeto
> **Enfermagem (2026/1) ✅**
> *Aplicação do questionário pré-intervenção, Grupo de Discussão (GD), coleta pós-intervenção e análise comparativa finalizadas com sucesso.*
>
> **Biomedicina (2026/1) ✅**
> *Coleta pré e pós-intervenção concluídas. Intervenção realizada apenas com Aula Teórica Expositiva (sem GD), atuando como grupo controle metodológico para as demais turmas.*
>
> **Farmácia (2026/1) ⏳**
> *Coleta e análise da baseline (Pré-intervenção) concluídas. Aguardando aplicação da aula, GD e coleta pós-intervenção.*

---

Este projeto tem o objetivo de avaliar o conhecimento de estudantes da área da saúde sobre farmacogenética e medir o impacto de intervenções educativas baseadas em dados clínicos, utilizando uma abordagem estruturada de análise de dados e estatística descritiva.

## 📌 Objetivo
Identificar e analisar, por meio de dados, lacunas na formação acadêmica sobre genética e farmacogenética, avaliando quantitativamente se uma intervenção educacional melhora o entendimento dos estudantes sobre a segurança do paciente e a tomada de decisão clínica.

## ⚠️ O Problema (Baseado na Literatura Científica)
Estudos recentes apontam que a defasagem no ensino de medicina de precisão não é um problema isolado, mas uma falha sistêmica na formação de toda a equipe multidisciplinar de saúde. Enfermeiros, farmacêuticos e outros profissionais apresentam baixa confiança na interpretação de testes genéticos e na aplicação da farmacogenética na prática. A formação acadêmica tradicional ainda oferece pouca preparação para lidar com essas informações, o que impacta diretamente a prevenção de reações adversas e a segurança do paciente.

> *Fonte: Análise bibliográfica de 17 artigos científicos ([ver pasta /docs](./docs)).*

## 🏆 Principais Resultados (Data Insights - Fase 1: Enfermagem)
A extração e análise dos dados após a intervenção educacional completa (Aula + GD) revelaram uma quebra clara de mitos do senso comum e alta retenção de condutas clínicas de segurança:

* **Quebra do Mito da Bula:** A concordância total de que "seguir rigorosamente a bula evita intoxicação" caiu drasticamente, dando lugar a uma discordância de **48.3%** no pós-intervenção.
![Mito da Bula](./plots/enfermagem/pos/01_mito_bula.png)

* **Mudança de Paradigma (Alergia vs. Metabolismo):** A visão inicial de que reações severas na primeira dose são sempre "alergias" foi revertida, com a maioria da turma passando a discordar dessa premissa após a intervenção educacional.
![Alergia ou Metabolismo](./plots/enfermagem/pos/04_alergia_ou_metabolismo.png)

* **Retenção Clínica Prática:** **100%** dos alunos identificaram corretamente o risco letal de overdose no caso prático de metabolismo ultrarrápido da Codeína (CYP2D6), e **93.1%** acertaram a conduta de redução drástica de dose no caso da TPMT.
<p>
  <img src="./plots/enfermagem/pos/07_pos_caso_codeina.png" width="45%" />
  <img src="./plots/enfermagem/pos/08_pos_caso_tpmt.png" width="45%" />
</p>

## 🏆 Principais Resultados (Data Insights - Fase 2: Biomedicina)
Na turma de biomedicina, a intervenção foi realizada exclusivamente através de uma **Aula Teórica** sobre farmacogenética, sem a aplicação do Grupo de Discussão (GD) prático. Os dados demonstraram que a base expositiva isolada já possui um impacto estatístico brutal na correção de erros conceituais:

* **O Fim do "Muro da Prudência":** Na baseline, **38.9%** da turma de Biomedicina optou pelo nível "Neutro" quando questionada se intoxicações seriam sempre alergias. Após a aula teórica, a indecisão despencou para **0%**, com a grande maioria (**70.6%**) assumindo a discordância total.
 ![Alergia ou Metabolismo](./plots/biomedicina/pos/04_alergia_ou_metabolismo.png)

* **Pulverização do Mito da Bula:** A confiança no senso comum de que a "dose padrão salva a todos" foi erradicada. A turma saltou de respostas pulverizadas para um bloco sólido de **82.4%** de discordância total no pós-intervenção.
  ![Mito da Bula](./plots/biomedicina/pos/01_mito_bula.png)
  
* **Empoderamento Profissional:** A discordância total de que os riscos genéticos são de responsabilidade "exclusiva da equipe médica" saltou de **72.2%** para **94.1%**, consolidando a compreensão do biomédico sobre a importância da sua responsabilidade técnica nos laudos.
   ![Papel do Biomédico](./plots/biomedicina/pos/02_responsabilidade_biomedicina.png)

### 📊 Resultados Preliminares (Baseline)
As turmas apresentaram perfis distintos antes da intervenção educacional, revelando diferenças relevantes entre domínio conceitual e aplicação prática do conhecimento.

* **Farmácia:** Embora os estudantes dominem a teoria (100% de acerto no conceito), a turma se dividiu ao aplicar a prática clínica de Alergia vs. Metabolismo. Além disso, **65.2%** dos alunos demonstraram forte dependência do senso comum no "Mito da Bula".
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
3. **Intervenção Educativa (Aula Teórica + GD):** Realização de uma aula expositiva ministrada pelo professor titular sobre os fundamentos da farmacogenética. Nas turmas da Enfermagem e Farmácia, a aula é seguida por um Grupo de Discussão (GD) focado na aplicação de casos clínicos reais. A turma de Biomedicina recebeu apenas a aula teórica (grupo controle metodológico).
4. **Coleta Pós-Intervenção:** Novo questionário para pareamento de respostas, aplicado após a intervenção educacional ser concluída.
5. **Análise de Impacto:** Uso de script unificado em R para limpar, cruzar e gerar visualizações com a finalidade de avaliar mudanças no raciocínio clínico das turmas.

## 🧱 Estrutura do Repositório
* [**`/docs`**](./docs): Revisão bibliográfica, recortes de artigos e planejamento das intervenções.
* [**`/data`**](./data): Bases de dados anonimizadas em `.csv` separadas por curso.
* [**`/scripts`**](./scripts): Código completo em `R` contendo o pipeline unificado de ETL e geração de gráficos.
* [**`/plots`**](./plots): Gráficos exportados em alta resolução, organizados pelas fases da pesquisa.

## 🚀 Próximas Etapas

1. Iniciar a intervenção educacional na turma de Farmácia (Aula Teórica + GD).
2. Realizar a coleta dos dados pós-intervenção educacional na turma de Farmácia.
3. Realizar a análise comparativa Pré vs. Pós da Farmácia utilizando o pipeline automatizado em R.
4. Cruzar os dados analíticos das três coortes: Comparar a eficácia da retenção clínica entre os grupos que tiveram GD (Enfermagem e Farmácia) versus o grupo que recebeu apenas instrução teórica (Biomedicina).

## ▶️ Como Executar a Análise (Portabilidade Total)
Este projeto foi desenvolvido de forma totalmente automatizada e estruturada. Para garantir que os caminhos relativos funcionem na sua máquina sem que você precise alterar nenhuma linha de código, siga o padrão profissional de execução de projetos em R:

### 1. Baixe o Projeto Completo
Em vez de baixar os arquivos soltos, baixe a estrutura completa do repositório para manter o pipeline intacto:
* Clique no botão verde **Code** no topo desta página e selecione **Download ZIP** (depois descompacte a pasta no seu computador).

### 2. Abra o Projeto no RStudio
Abra o seu RStudio. No menu superior, vá em File > New Project > Existing Directory.
Clique em Browse, navegue até a pasta do projeto que você baixou/descompactar e clique em Create Project.

### 3. Execute o Script de Forma Automatizada
Na aba de arquivos do RStudio, abra a pasta /scripts e selecione o arquivo correspondente ao curso que deseja analisar (ex: 05_pre_biomedicina.R).
Certifique-se de que a respectiva base de dados .csv esteja dentro da pasta /data.

Pressione Ctrl + A para selecionar todo o código e clique em Run (ou use o atalho Ctrl + Enter).
O pipeline executará todo o processo de forma autônoma:

- Importação e limpeza dos dados brutos (ETL);
- Padronização das variáveis e fatoração das escalas Likert;
- Exportação automatizada dos gráficos via `ggsave()`.

### Notas de Reprodutibilidade e Escalabilidade
- Estrutura Equivalente: Os scripts possuem rigorosamente a mesma lógica estatística, alterando apenas os títulos e enunciados específicos adaptados para as competências de cada categoria profissional.
- Sem Alteração de Código: Caso novas turmas ou dados sejam adicionados ao projeto, você não precisa modificar a lógica do código. Basta substituir o arquivo antigo na pasta /data por um novo arquivo .csv de mesmo nome e rodar o script novamente. Todo o restante do pipeline permanecerá inalterado.
  
---
*Projeto de Extensão - UFMG 2025/26*

---

**Por Inácio Vieira** *Estudante de Enfermagem na Universidade Federal de Minas Gerais (UFMG) | Iniciando em Análise de Dados em Saúde* [LinkedIn](https://www.linkedin.com/in/inaciosantosvieira/)
**Professor Orientador:** Prof. Marcelo Rizzatti Luizon [Lattes](http://lattes.cnpq.br/1264026443614775)
