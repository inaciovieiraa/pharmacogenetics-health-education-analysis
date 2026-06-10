library(tidyverse)

# 1. Coletando os dados do formulário (Usando caminho relativo para portabilidade):
dadospre_sujos <- read.csv("data/dadospre.csv")

#2. Renomeando colunas:
dadospre <- dadospre_sujos %>% 
  rename(
    q1_bula = 2,
    q2_medico = 3,
    q3_dna = 4,
    q4_alergia = 5,
    q5_azar = 6,
    q6_conceito = 7
  )

#3. Preparando gráfico da questão 1:

resumo_q1 <- dadospre %>%
  mutate(q1_bula = factor(q1_bula, levels = 1:5)) %>%
  count(q1_bula, .drop = FALSE) %>% 
  mutate(porcentagem = n / sum(n) * 100)

ggplot(resumo_q1, aes(x = q1_bula, y = n)) +
  geom_col(fill = "darkred") +
  scale_x_discrete(drop = FALSE) +
  theme_minimal() +
  labs(
    x = "NIVEL DE CONCORDÂNCIA",
    y = "QUANTIDADE DE ALUNOS",
    title = "MITO DA BULA: Respostas da turma antes da aula",
    subtitle = "Seguir rigorosamente a dose padrão recomendada na bula é a melhor forma\nde garantir que nenhum paciente sofra intoxicação medicamentosa.") +
  geom_text(aes(label = paste0(round(porcentagem, 1), "%")),
            hjust = 0.5,
            size = 4.3,
            vjust = -0.3,
            fontface = "bold")

#4. Preparando gráfico da questão 2: (OBS: MUDAR ENUNCIADO DESSA QUESTÃO PARA CADA CURSO!!!!)

resumo_q2 <- dadospre %>%
  mutate(q2_medico = factor(q2_medico, levels = 1:5)) %>%
  count(q2_medico, .drop = FALSE) %>% 
  mutate(porcentagem = n / sum(n) * 100)

ggplot(resumo_q2, aes(x = q2_medico, y = n)) +
  geom_col(fill = "darkblue") + 
  scale_x_discrete(drop = FALSE) +
  theme_minimal() +
  labs(
    x = "NIVEL DE CONCORDÂNCIA",
    y = "QUANTIDADE DE ALUNOS",
    title = "RESPONSABILIDADE DA ENFERMAGEM: Visão da turma antes da aula",
    subtitle = "A investigação de riscos genéticos e reações a drogas é uma responsabilidade da equipe médica e \nfarmacêutica, cabendo à enfermagem apenas administrar a medicação prescrita.") + 
  geom_text(aes(label = paste0(round(porcentagem, 1), "%")),
            hjust = 0.5,
            size = 4.3,
            vjust = -0.3,
            fontface = "bold")

#5. Preparando gráfico da questão 3:

resumo_q3 <- dadospre %>%
  mutate(q3_dna = factor(q3_dna, levels = 1:5)) %>%
  count(q3_dna, .drop = FALSE) %>% 
  mutate(porcentagem = n / sum(n) * 100)

ggplot(resumo_q3, aes(x = q3_dna, y = n)) +
  geom_col(fill = "darkblue") +
  scale_x_discrete(drop = FALSE) +
  theme_minimal() +
  labs(
    x = "NIVEL DE CONCORDÂNCIA",
    y = "QUANTIDADE DE ALUNOS",
    title = "O VALOR DA ANAMNESE: Histórico familiar vs. Teste de DNA",
    subtitle = "Apenas o teste de DNA laboratorial serve para identificar riscos farmacogenéticos. \nPerguntas sobre o histórico familiar do paciente ajudam pouco nesse sentido.") + 
  geom_text(aes(label = paste0(round(porcentagem, 1), "%")),
            hjust = 0.5,
            size = 4.3,
            vjust = -0.3,
            fontface = "bold")

#6. Preparando gráfico da questão 4:

resumo_q4 <- dadospre %>%
  mutate(q4_alergia = factor(q4_alergia, levels = 1:5)) %>%
  count(q4_alergia, .drop = FALSE) %>% 
  mutate(porcentagem = n / sum(n) * 100)

ggplot(resumo_q4, aes(x = q4_alergia, y = n)) +
  geom_col(fill = "darkred") +
  scale_x_discrete(drop = FALSE) +
  theme_minimal() +
  labs(
    x = "NIVEL DE CONCORDÂNCIA",
    y = "QUANTIDADE DE ALUNOS",
    title = "ALERGIA OU METABOLISMO? A visão da turma sobre reações iniciais",
    subtitle = "Quando um paciente tem uma reação muito forte a um medicamento logo \nna primeira dose, quase sempre é porque ele tem alergia àquela substância.") + 
  geom_text(aes(label = paste0(round(porcentagem, 1), "%")),
            hjust = 0.5,
            size = 4.3,
            vjust = -0.3,
            fontface = "bold")

#7. Preparando gráfico da questão 5:

resumo_q5 <- dadospre %>%
  mutate(q5_azar = factor(q5_azar, levels = 1:5)) %>%
  count(q5_azar, .drop = FALSE) %>% 
  mutate(porcentagem = n / sum(n) * 100)

ggplot(resumo_q5, aes(x = q5_azar, y = n)) +
  geom_col(fill = "darkblue") +
  scale_x_discrete(drop = FALSE) +
  theme_minimal() +
  labs(
    x = "NIVEL DE CONCORDÂNCIA",
    y = "QUANTIDADE DE ALUNOS",
    title = "AZAR OU GENÉTICA? A visão da turma sobre intoxicações severas",
    subtitle = "Reações adversas graves a medicamentos (como uma intoxicação severa) são quase\nsempre eventos imprevisíveis e inevitáveis, uma questão de azar do paciente.") + 
  geom_text(aes(label = paste0(round(porcentagem, 1), "%")),
            hjust = 0.5,
            size = 4.3,
            vjust = -0.3,
            fontface = "bold")

#8. Preparando gráfico da questão 6 (Conceito):

resumo_q6 <- dadospre %>%
  count(q6_conceito) %>% 
  mutate(porcentagem = n / sum(n) * 100)

ggplot(resumo_q6, aes(x = q6_conceito, y = n)) +
  geom_col(fill = "darkgreen") + 
  theme_minimal() +
  labs(
    x = "",
    y = "QUANTIDADE DE ALUNOS",
    title = "O QUE A FARMACOGENÉTICA ESTUDA?",
    subtitle = "A farmacogenética estuda principalmente:"
  ) + 
  geom_text(aes(label = paste0(round(porcentagem, 1), "%")),
            hjust = 0.45,
            vjust = 0,
            size = 5,
            fontface = "bold") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.2)))
