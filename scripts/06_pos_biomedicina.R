library(tidyverse)

diretorio_plots <- "plots/biomedicina/pos/"

# 1. Coletando dados dos questionários Pré e Pós-Intervenção:
dadospre_sujos <- read.csv("data/pre_biomedicina.csv")
dadospos_sujos <- read.csv("data/pos_biomedicina.csv")

# 2. Limpeza dos dados pré:
dadospre <- dadospre_sujos %>% 
  rename(
    q1_bula = 2,
    q2_medico = 3,
    q3_dna = 4,
    q4_alergia = 5,
    q5_azar = 6,
    q6_conceito = 7
  ) %>% 
  mutate(fase = "Pré") 

# 3. Limpeza dos dados pós:
dadospos <- dadospos_sujos %>% 
  rename(
    q1_bula = 2,
    q2_medico = 3,
    q3_dna = 4,
    q4_alergia = 5,
    q5_azar = 6,
    q6_conceito = 7
  ) %>% 
  mutate(fase = "Pós") 

# 4. Unindo os dois e preparando os dados da questão 1:
dados_completos <- bind_rows(dadospre, dadospos)
resumo_q1_comp <- dados_completos %>%
  mutate(fase = factor(fase, levels = c("Pré", "Pós"))) %>% 
  group_by(fase, q1_bula) %>%
  count() %>%
  group_by(fase) %>% 
  mutate(porcentagem = n / sum(n) * 100)

# 5. Gerando o Gráfico da questão 1:
ggplot(resumo_q1_comp, aes(x = as.factor(q1_bula), y = porcentagem, fill = fase)) +
  geom_col(position = position_dodge(preserve = "single")) + 
  scale_fill_manual(values = c("Pré" = "darkred", "Pós" = "darkgreen")) +
  
  theme_minimal() +
  labs(
    x = "NÍVEL DE CONCORDÂNCIA",
    y = "PORCENTAGEM DE ALUNOS (%)",
    title = "MITO DA BULA: Comparativo Pré e Pós-Intervenção",
    subtitle = "Seguir rigorosamente a dose padrão recomendada na bula é a melhor forma
de garantir que nenhum paciente sofra intoxicação medicamentosa.",
    fill = "Momento"
  ) +
  geom_text(aes(label = paste0(round(porcentagem, 1), "%")),
            position = position_dodge(width = 0.9),
            vjust = -0.5,
            size = 4,
            fontface = "bold") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.15)))

ggsave(paste0(diretorio_plots, "01_mito_bula.png"), width = 8, height = 5.5, dpi = 300)

# 6. Preparando dados e gerando o Gráfico da questão 2:
resumo_q2_comp <- dados_completos %>%
  mutate(fase = factor(fase, levels = c("Pré", "Pós"))) %>% 
  group_by(fase, q2_medico) %>%
  count() %>%
  group_by(fase) %>% 
  mutate(porcentagem = n / sum(n) * 100) 

ggplot(resumo_q2_comp, aes(x = as.factor(q2_medico), y = porcentagem, fill = fase)) +
  geom_col(position = position_dodge(preserve = "single")) + 
  scale_fill_manual(values = c("Pré" = "darkred", "Pós" = "darkgreen")) +
  
  theme_minimal() +
  labs(
    x = "NÍVEL DE CONCORDÂNCIA",
    y = "PORCENTAGEM DE ALUNOS (%)",
    title = "RESPONSABILIDADE DA BIOMEDICINA: Comparativo Pré e Pós",
    subtitle = "A investigação de riscos genéticos e a definição da terapia personalizada são responsabilidades 
exclusivas da equipe médica, cabendo ao biomédico apenas a execução técnica do exame e a entrega do laudo..",
    fill = "Momento"
  ) +
  geom_text(aes(label = paste0(round(porcentagem, 1), "%")),
            position = position_dodge(width = 0.9),
            vjust = -0.5,
            size = 4,
            fontface = "bold") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.15)))

ggsave(paste0(diretorio_plots, "02_responsabilidade_enfermagem.png"), width = 8, height = 5.5, dpi = 300)

# 7. Preparando dados e gerando o Gráfico da questão 3:
resumo_q3_comp <- dados_completos %>%
  mutate(fase = factor(fase, levels = c("Pré", "Pós"))) %>% 
  group_by(fase, q3_dna) %>%
  count() %>%
  group_by(fase) %>% 
  mutate(porcentagem = n / sum(n) * 100) 

ggplot(resumo_q3_comp, aes(x = as.factor(q3_dna), y = porcentagem, fill = fase)) +
  geom_col(position = position_dodge(preserve = "single")) + 
  scale_fill_manual(values = c("Pré" = "darkred", "Pós" = "darkgreen")) +
  
  theme_minimal() +
  labs(
    x = "NÍVEL DE CONCORDÂNCIA",
    y = "PORCENTAGEM DE ALUNOS (%)",
    title = "O VALOR DA ANAMNESE: Histórico familiar vs. Teste de DNA",
    subtitle = "Apenas o teste de DNA laboratorial serve para identificar riscos farmacogenéticos.
Perguntas sobre o histórico familiar do paciente ajudam pouco nesse sentido.",
    fill = "Momento"
  ) +
  geom_text(aes(label = paste0(round(porcentagem, 1), "%")),
            position = position_dodge(width = 0.9),
            vjust = -0.5,
            size = 4,
            fontface = "bold") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.15)))

ggsave(paste0(diretorio_plots, "03_valor_anamnese.png"), width = 8, height = 5.5, dpi = 300)

# 8. Preparando dados e gerando o Gráfico da questão 4:
resumo_q4_comp <- dados_completos %>%
  mutate(fase = factor(fase, levels = c("Pré", "Pós"))) %>% 
  group_by(fase, q4_alergia) %>%
  count() %>%
  group_by(fase) %>% 
  mutate(porcentagem = n / sum(n) * 100) 

ggplot(resumo_q4_comp, aes(x = as.factor(q4_alergia), y = porcentagem, fill = fase)) +
  geom_col(position = position_dodge(preserve = "single")) + 
  scale_fill_manual(values = c("Pré" = "darkred", "Pós" = "darkgreen")) +
  
  theme_minimal() +
  labs(
    x = "NÍVEL DE CONCORDÂNCIA",
    y = "PORCENTAGEM DE ALUNOS (%)",
    title = "ALERGIA OU METABOLISMO? A visão da turma sobre reações iniciais",
    subtitle = "Quando um paciente tem uma reação muito forte a um medicamento logo na primeira dose,
quase sempre é porque ele tem alergia àquela substância",
    fill = "Momento"
  ) +
  geom_text(aes(label = paste0(round(porcentagem, 1), "%")),
            position = position_dodge(width = 0.9),
            vjust = -0.5,
            size = 4,
            fontface = "bold") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.15)))

ggsave(paste0(diretorio_plots, "04_alergia_ou_metabolismo.png"), width = 8, height = 5.5, dpi = 300)

# 9. Preparando dados e gerando o Gráfico da questão 5:
resumo_q5_comp <- dados_completos %>%
  mutate(fase = factor(fase, levels = c("Pré", "Pós"))) %>% 
  group_by(fase, q5_azar) %>%
  count() %>%
  group_by(fase) %>% 
  mutate(porcentagem = n / sum(n) * 100) 

ggplot(resumo_q5_comp, aes(x = as.factor(q5_azar), y = porcentagem, fill = fase)) +
  geom_col(position = position_dodge(preserve = "single")) + 
  scale_fill_manual(values = c("Pré" = "darkred", "Pós" = "darkgreen")) +
  
  theme_minimal() +
  labs(
    x = "NÍVEL DE CONCORDÂNCIA",
    y = "PORCENTAGEM DE ALUNOS (%)",
    title = "AZAR OU GENÉTICA? A visão da turma sobre intoxicações severas",
    subtitle = "Reações adversas graves a medicamentos (como uma intoxicação severa) são quase
sempre eventos imprevisíveis e inevitáveis, uma questão de azar do paciente.",
    fill = "Momento"
  ) +
  geom_text(aes(label = paste0(round(porcentagem, 1), "%")),
            position = position_dodge(width = 0.9),
            vjust = -0.5,
            size = 4,
            fontface = "bold") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.15)))

ggsave(paste0(diretorio_plots, "05_azar_ou_genetica.png"), width = 8, height = 5.5, dpi = 300)

# 10. Preparando dados e gerando o Gráfico da questão 6:
resumo_q6_comp <- dados_completos %>%
  mutate(fase = factor(fase, levels = c("Pré", "Pós"))) %>% 
  group_by(fase, q6_conceito) %>%
  count() %>%
  group_by(fase) %>% 
  mutate(porcentagem = n / sum(n) * 100) 

ggplot(resumo_q6_comp, aes(x = as.factor(q6_conceito), y = porcentagem, fill = fase)) +
  geom_col(position = position_dodge(preserve = "single")) + 
  scale_fill_manual(values = c("Pré" = "darkred", "Pós" = "darkgreen")) +
  
  theme_minimal() +
  labs(
    x = "NÍVEL DE CONCORDÂNCIA",
    y = "PORCENTAGEM DE ALUNOS (%)",
    title = "O QUE A FARMACOGENÉTICA ESTUDA?",
    subtitle = "A farmacogenética estuda principalmente:",
    fill = "Momento"
  ) +
  geom_text(aes(label = paste0(round(porcentagem, 1), "%")),
            position = position_dodge(width = 0.9),
            vjust = -0.5,
            size = 4,
            fontface = "bold") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.15)))

ggsave(paste0(diretorio_plots, "06_escopo_estudo.png"), width = 9, height = 6, dpi = 300)

