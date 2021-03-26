
library(tidyverse)
library(readr)
library(dplyr)
library(readxl)
library(data.table)
library(purrr)
library(gridExtra)

#Capturando a Receita Total

dados_rec_tot_2016 = read.csv2('C:/dados/financaspublicas/RECEITA_TOTAL_2016.csv') %>% 
                          filter(CO_MUNICIPIO == "330190", TP_PERIODO == "ANUAL", NO_ESFERA_ADM == "MUNICIPAL") %>%
                          rename(ano = AN_EXERCICIO, cod_mun = CO_MUNICIPIO, nom_mun = NO_MUNCIPIO, cod_cont = CO_CONTA_CONTABIL, nom_cont = NO_CONTA_CONTABIL, 
                                 vl_rec_prev = VL_RECEITA_PREVISAO_ATUALIZADA, vl_rec_real = VL_RECEITA_REALIZADA, vl_rec_orc = VL_RECEITA_ORCADA) %>%
                          select(ano, cod_mun, nom_mun, cod_cont, nom_cont, vl_rec_prev, vl_rec_real, vl_rec_orc)

dados_rec_tot_2017 = read.csv2('C:/dados/financaspublicas/RECEITA_TOTAL_2017.csv') %>% 
                          filter(CO_MUNICIPIO == "330190", TP_PERIODO == "ANUAL", NO_ESFERA_ADM == "MUNICIPAL") %>%
                          rename(ano = AN_EXERCICIO, cod_mun = CO_MUNICIPIO, nom_mun = NO_MUNCIPIO, cod_cont = CO_CONTA_CONTABIL, nom_cont = NO_CONTA_CONTABIL, 
                                 vl_rec_prev = VL_RECEITA_PREVISAO_ATUALIZADA, vl_rec_real = VL_RECEITA_REALIZADA, vl_rec_orc = VL_RECEITA_ORCADA) %>%
                          select(ano, cod_mun, nom_mun, cod_cont, nom_cont, vl_rec_prev, vl_rec_real, vl_rec_orc)

dados_rec_tot_2018 = read.csv2('C:/dados/financaspublicas/RECEITA_TOTAL_2018.csv') %>% 
                          filter(CO_MUNICIPIO == "330190", TP_PERIODO == "ANUAL", NO_ESFERA_ADM == "MUNICIPAL") %>%
                          rename(ano = AN_EXERCICIO, cod_mun = CO_MUNICIPIO, nom_mun = NO_MUNCIPIO, cod_cont = CO_CONTA_CONTABIL, nom_cont = NO_CONTA_CONTABIL, 
                                 vl_rec_prev = VL_RECEITA_PREVISAO_ATUALIZADA, vl_rec_real = VL_RECEITA_REALIZADA, vl_rec_orc = VL_RECEITA_ORCADA) %>%
                          select(ano, cod_mun, nom_mun, cod_cont, nom_cont, vl_rec_prev, vl_rec_real, vl_rec_orc)


tabela_rec_tot = rbind(dados_rec_tot_2016, dados_rec_tot_2017, dados_rec_tot_2018)
str(tabela_rec_tot)

write.csv2(tabela_rec_tot, file = "C:/dados/dissertacao/tabela_rec_tot.csv")



