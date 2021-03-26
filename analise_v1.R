
library(tidyverse)
library(readr)
library(dplyr)
library(readxl)
library(data.table)
library(purrr)
library(gridExtra)

#Despesas Pessoas Totais
  dados_desp_pess_tot_2003 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal Total - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2003, desp_pess_tot = p_2003) %>% select(ano, cod_muni, desp_pess_tot)
  dados_desp_pess_tot_2004 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal Total - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2004, desp_pess_tot = p_2004) %>% select(ano, cod_muni, desp_pess_tot)
  dados_desp_pess_tot_2005 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal Total - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2005, desp_pess_tot = p_2005) %>% select(ano, cod_muni, desp_pess_tot)
  dados_desp_pess_tot_2006 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal Total - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2006, desp_pess_tot = p_2006) %>% select(ano, cod_muni, desp_pess_tot)
  dados_desp_pess_tot_2007 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal Total - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2007, desp_pess_tot = p_2007) %>% select(ano, cod_muni, desp_pess_tot)
  dados_desp_pess_tot_2008 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal Total - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2008, desp_pess_tot = p_2008) %>% select(ano, cod_muni, desp_pess_tot)
  dados_desp_pess_tot_2009 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal Total - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2009, desp_pess_tot = p_2009) %>% select(ano, cod_muni, desp_pess_tot)
  dados_desp_pess_tot_2010 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal Total - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2010, desp_pess_tot = p_2010) %>% select(ano, cod_muni, desp_pess_tot)
  dados_desp_pess_tot_2011 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal Total - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2011, desp_pess_tot = p_2011) %>% select(ano, cod_muni, desp_pess_tot)
  dados_desp_pess_tot_2012 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal Total - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2012, desp_pess_tot = p_2012) %>% select(ano, cod_muni, desp_pess_tot)
  dados_desp_pess_tot_2013 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal Total - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2013, desp_pess_tot = p_2013) %>% select(ano, cod_muni, desp_pess_tot)
  dados_desp_pess_tot_2014 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal Total - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2014, desp_pess_tot = p_2014) %>% select(ano, cod_muni, desp_pess_tot)
  dados_desp_pess_tot_2015 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal Total - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2015, desp_pess_tot = p_2015) %>% select(ano, cod_muni, desp_pess_tot)
  dados_desp_pess_tot_2016 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal Total - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2016, desp_pess_tot = p_2016) %>% select(ano, cod_muni, desp_pess_tot)
  dados_desp_pess_tot_2017 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal Total - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2017, desp_pess_tot = p_2017) %>% select(ano, cod_muni, desp_pess_tot)
  dados_desp_pess_tot_2018 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal Total - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2018, desp_pess_tot = p_2018) %>% select(ano, cod_muni, desp_pess_tot)
  tabela_desp_pess_tot = rbind(dados_desp_pess_tot_2003, dados_desp_pess_tot_2004, dados_desp_pess_tot_2005, dados_desp_pess_tot_2006, dados_desp_pess_tot_2007, dados_desp_pess_tot_2008, dados_desp_pess_tot_2009, dados_desp_pess_tot_2010, dados_desp_pess_tot_2011, dados_desp_pess_tot_2012, dados_desp_pess_tot_2013, dados_desp_pess_tot_2014, dados_desp_pess_tot_2015, dados_desp_pess_tot_2016, dados_desp_pess_tot_2017, dados_desp_pess_tot_2018)

#Despesas Pessoas Ativos
  dados_desp_pess_atv_2003 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Ativos - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2003, desp_pess_atv = p_2003) %>% select(ano, cod_muni, desp_pess_atv)
  dados_desp_pess_atv_2004 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Ativos - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2004, desp_pess_atv = p_2004) %>% select(ano, cod_muni, desp_pess_atv)
  dados_desp_pess_atv_2005 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Ativos - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2005, desp_pess_atv = p_2005) %>% select(ano, cod_muni, desp_pess_atv)
  dados_desp_pess_atv_2006 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Ativos - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2006, desp_pess_atv = p_2006) %>% select(ano, cod_muni, desp_pess_atv)
  dados_desp_pess_atv_2007 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Ativos - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2007, desp_pess_atv = p_2007) %>% select(ano, cod_muni, desp_pess_atv)
  dados_desp_pess_atv_2008 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Ativos - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2008, desp_pess_atv = p_2008) %>% select(ano, cod_muni, desp_pess_atv)
  dados_desp_pess_atv_2009 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Ativos - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2009, desp_pess_atv = p_2009) %>% select(ano, cod_muni, desp_pess_atv)
  dados_desp_pess_atv_2010 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Ativos - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2010, desp_pess_atv = p_2010) %>% select(ano, cod_muni, desp_pess_atv)
  dados_desp_pess_atv_2011 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Ativos - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2011, desp_pess_atv = p_2011) %>% select(ano, cod_muni, desp_pess_atv)
  dados_desp_pess_atv_2012 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Ativos - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2012, desp_pess_atv = p_2012) %>% select(ano, cod_muni, desp_pess_atv)
  dados_desp_pess_atv_2013 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Ativos - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2013, desp_pess_atv = p_2013) %>% select(ano, cod_muni, desp_pess_atv)
  dados_desp_pess_atv_2014 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Ativos - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2014, desp_pess_atv = p_2014) %>% select(ano, cod_muni, desp_pess_atv)
  dados_desp_pess_atv_2015 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Ativos - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2015, desp_pess_atv = p_2015) %>% select(ano, cod_muni, desp_pess_atv)
  dados_desp_pess_atv_2016 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Ativos - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2016, desp_pess_atv = p_2016) %>% select(ano, cod_muni, desp_pess_atv)
  dados_desp_pess_atv_2017 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Ativos - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2017, desp_pess_atv = p_2017) %>% select(ano, cod_muni, desp_pess_atv)
  dados_desp_pess_atv_2018 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Ativos - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2018, desp_pess_atv = p_2018) %>% select(ano, cod_muni, desp_pess_atv)
  tabela_desp_pess_atv = rbind(dados_desp_pess_atv_2003, dados_desp_pess_atv_2004, dados_desp_pess_atv_2005, dados_desp_pess_atv_2006, dados_desp_pess_atv_2007, dados_desp_pess_atv_2008, dados_desp_pess_atv_2009, dados_desp_pess_atv_2010, dados_desp_pess_atv_2011, dados_desp_pess_atv_2012, dados_desp_pess_atv_2013, dados_desp_pess_atv_2014, dados_desp_pess_atv_2015, dados_desp_pess_atv_2016, dados_desp_pess_atv_2017, dados_desp_pess_atv_2018)
  
#Despesas Pessoas Inativos
  dados_desp_pess_ina_2003 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Inativos - Finbra - Base Bruta.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2003, desp_pess_ina = p_2003) %>% select(ano, cod_muni, desp_pess_ina)
  dados_desp_pess_ina_2004 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Inativos - Finbra - Base Bruta.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2004, desp_pess_ina = p_2004) %>% select(ano, cod_muni, desp_pess_ina)
  dados_desp_pess_ina_2005 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Inativos - Finbra - Base Bruta.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2005, desp_pess_ina = p_2005) %>% select(ano, cod_muni, desp_pess_ina)
  dados_desp_pess_ina_2006 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Inativos - Finbra - Base Bruta.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2006, desp_pess_ina = p_2006) %>% select(ano, cod_muni, desp_pess_ina)
  dados_desp_pess_ina_2007 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Inativos - Finbra - Base Bruta.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2007, desp_pess_ina = p_2007) %>% select(ano, cod_muni, desp_pess_ina)
  dados_desp_pess_ina_2008 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Inativos - Finbra - Base Bruta.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2008, desp_pess_ina = p_2008) %>% select(ano, cod_muni, desp_pess_ina)
  dados_desp_pess_ina_2009 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Inativos - Finbra - Base Bruta.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2009, desp_pess_ina = p_2009) %>% select(ano, cod_muni, desp_pess_ina)
  dados_desp_pess_ina_2010 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Inativos - Finbra - Base Bruta.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2010, desp_pess_ina = p_2010) %>% select(ano, cod_muni, desp_pess_ina)
  dados_desp_pess_ina_2011 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Inativos - Finbra - Base Bruta.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2011, desp_pess_ina = p_2011) %>% select(ano, cod_muni, desp_pess_ina)
  dados_desp_pess_ina_2012 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Inativos - Finbra - Base Bruta.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2012, desp_pess_ina = p_2012) %>% select(ano, cod_muni, desp_pess_ina)
  dados_desp_pess_ina_2013 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Inativos - Finbra - Base Bruta.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2013, desp_pess_ina = p_2013) %>% select(ano, cod_muni, desp_pess_ina)
  dados_desp_pess_ina_2014 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Inativos - Finbra - Base Bruta.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2014, desp_pess_ina = p_2014) %>% select(ano, cod_muni, desp_pess_ina)
  dados_desp_pess_ina_2015 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Inativos - Finbra - Base Bruta.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2015, desp_pess_ina = p_2015) %>% select(ano, cod_muni, desp_pess_ina)
  dados_desp_pess_ina_2016 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Inativos - Finbra - Base Bruta.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2016, desp_pess_ina = p_2016) %>% select(ano, cod_muni, desp_pess_ina)
  dados_desp_pess_ina_2017 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Inativos - Finbra - Base Bruta.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2017, desp_pess_ina = p_2017) %>% select(ano, cod_muni, desp_pess_ina)
  dados_desp_pess_ina_2018 = read_excel('C:/dados/dissertacao/Base Final Gasto com Pessoal - Inativos - Finbra - Base Bruta.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2018, desp_pess_ina = p_2018) %>% select(ano, cod_muni, desp_pess_ina)
  tabela_desp_pess_ina = rbind(dados_desp_pess_ina_2003, dados_desp_pess_ina_2004, dados_desp_pess_ina_2005, dados_desp_pess_ina_2006, dados_desp_pess_ina_2007, dados_desp_pess_ina_2008, dados_desp_pess_ina_2009, dados_desp_pess_ina_2010, dados_desp_pess_ina_2011, dados_desp_pess_ina_2012, dados_desp_pess_ina_2013, dados_desp_pess_ina_2014, dados_desp_pess_ina_2015, dados_desp_pess_ina_2016, dados_desp_pess_ina_2017, dados_desp_pess_ina_2018)

#Investimentos Públicos
  dados_desp_invst_pub_2003 = read_excel('C:/dados/dissertacao/Base Final Investimento Público - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2003, desp_invst_pub = -8) %>% select(ano, cod_muni, desp_invst_pub)
  dados_desp_invst_pub_2004 = read_excel('C:/dados/dissertacao/Base Final Investimento Público - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2004, desp_invst_pub = p_2004) %>% select(ano, cod_muni, desp_invst_pub)
  dados_desp_invst_pub_2005 = read_excel('C:/dados/dissertacao/Base Final Investimento Público - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2005, desp_invst_pub = p_2005) %>% select(ano, cod_muni, desp_invst_pub)
  dados_desp_invst_pub_2006 = read_excel('C:/dados/dissertacao/Base Final Investimento Público - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2006, desp_invst_pub = p_2006) %>% select(ano, cod_muni, desp_invst_pub)
  dados_desp_invst_pub_2007 = read_excel('C:/dados/dissertacao/Base Final Investimento Público - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2007, desp_invst_pub = p_2007) %>% select(ano, cod_muni, desp_invst_pub)
  dados_desp_invst_pub_2008 = read_excel('C:/dados/dissertacao/Base Final Investimento Público - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2008, desp_invst_pub = p_2008) %>% select(ano, cod_muni, desp_invst_pub)
  dados_desp_invst_pub_2009 = read_excel('C:/dados/dissertacao/Base Final Investimento Público - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2009, desp_invst_pub = p_2009) %>% select(ano, cod_muni, desp_invst_pub)
  dados_desp_invst_pub_2010 = read_excel('C:/dados/dissertacao/Base Final Investimento Público - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2010, desp_invst_pub = p_2010) %>% select(ano, cod_muni, desp_invst_pub)
  dados_desp_invst_pub_2011 = read_excel('C:/dados/dissertacao/Base Final Investimento Público - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2011, desp_invst_pub = p_2011) %>% select(ano, cod_muni, desp_invst_pub)
  dados_desp_invst_pub_2012 = read_excel('C:/dados/dissertacao/Base Final Investimento Público - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2012, desp_invst_pub = p_2012) %>% select(ano, cod_muni, desp_invst_pub)
  dados_desp_invst_pub_2013 = read_excel('C:/dados/dissertacao/Base Final Investimento Público - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2013, desp_invst_pub = p_2013) %>% select(ano, cod_muni, desp_invst_pub)
  dados_desp_invst_pub_2014 = read_excel('C:/dados/dissertacao/Base Final Investimento Público - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2014, desp_invst_pub = p_2014) %>% select(ano, cod_muni, desp_invst_pub)
  dados_desp_invst_pub_2015 = read_excel('C:/dados/dissertacao/Base Final Investimento Público - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2015, desp_invst_pub = p_2015) %>% select(ano, cod_muni, desp_invst_pub)
  dados_desp_invst_pub_2016 = read_excel('C:/dados/dissertacao/Base Final Investimento Público - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2016, desp_invst_pub = p_2016) %>% select(ano, cod_muni, desp_invst_pub)
  dados_desp_invst_pub_2017 = read_excel('C:/dados/dissertacao/Base Final Investimento Público - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2017, desp_invst_pub = p_2017) %>% select(ano, cod_muni, desp_invst_pub)
  dados_desp_invst_pub_2018 = read_excel('C:/dados/dissertacao/Base Final Investimento Público - Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2018, desp_invst_pub = p_2018) %>% select(ano, cod_muni, desp_invst_pub)
  tabela_desp_invst_pub = rbind(dados_desp_invst_pub_2003, dados_desp_invst_pub_2004, dados_desp_invst_pub_2005, dados_desp_invst_pub_2006, dados_desp_invst_pub_2007, dados_desp_invst_pub_2008, dados_desp_invst_pub_2009, dados_desp_invst_pub_2010, dados_desp_invst_pub_2011, dados_desp_invst_pub_2012, dados_desp_invst_pub_2013, dados_desp_invst_pub_2014, dados_desp_invst_pub_2015, dados_desp_invst_pub_2016, dados_desp_invst_pub_2017, dados_desp_invst_pub_2018)
  
#Despesas Edu
  dados_desp_edu_tot_2003 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Educação - Base Única - SIOPE e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2003, desp_edu_tot = -8 ) %>% select(ano, cod_muni, desp_edu_tot)
  dados_desp_edu_tot_2004 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Educação - Base Única - SIOPE e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2004, desp_edu_tot = p_2004) %>% select(ano, cod_muni, desp_edu_tot)
  dados_desp_edu_tot_2005 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Educação - Base Única - SIOPE e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2005, desp_edu_tot = p_2005) %>% select(ano, cod_muni, desp_edu_tot)
  dados_desp_edu_tot_2006 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Educação - Base Única - SIOPE e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2006, desp_edu_tot = p_2006) %>% select(ano, cod_muni, desp_edu_tot)
  dados_desp_edu_tot_2007 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Educação - Base Única - SIOPE e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2007, desp_edu_tot = p_2007) %>% select(ano, cod_muni, desp_edu_tot)
  dados_desp_edu_tot_2008 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Educação - Base Única - SIOPE e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2008, desp_edu_tot = p_2008) %>% select(ano, cod_muni, desp_edu_tot)
  dados_desp_edu_tot_2009 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Educação - Base Única - SIOPE e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2009, desp_edu_tot = p_2009) %>% select(ano, cod_muni, desp_edu_tot)
  dados_desp_edu_tot_2010 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Educação - Base Única - SIOPE e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2010, desp_edu_tot = p_2010) %>% select(ano, cod_muni, desp_edu_tot)
  dados_desp_edu_tot_2011 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Educação - Base Única - SIOPE e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2011, desp_edu_tot = p_2011) %>% select(ano, cod_muni, desp_edu_tot)
  dados_desp_edu_tot_2012 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Educação - Base Única - SIOPE e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2012, desp_edu_tot = p_2012) %>% select(ano, cod_muni, desp_edu_tot)
  dados_desp_edu_tot_2013 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Educação - Base Única - SIOPE e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2013, desp_edu_tot = p_2013) %>% select(ano, cod_muni, desp_edu_tot)
  dados_desp_edu_tot_2014 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Educação - Base Única - SIOPE e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2014, desp_edu_tot = p_2014) %>% select(ano, cod_muni, desp_edu_tot)
  dados_desp_edu_tot_2015 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Educação - Base Única - SIOPE e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2015, desp_edu_tot = p_2015) %>% select(ano, cod_muni, desp_edu_tot)
  dados_desp_edu_tot_2016 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Educação - Base Única - SIOPE e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2016, desp_edu_tot = p_2016) %>% select(ano, cod_muni, desp_edu_tot)
  dados_desp_edu_tot_2017 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Educação - Base Única - SIOPE e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2017, desp_edu_tot = p_2017) %>% select(ano, cod_muni, desp_edu_tot)
  dados_desp_edu_tot_2018 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Educação - Base Única - SIOPE e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2018, desp_edu_tot = p_2018) %>% select(ano, cod_muni, desp_edu_tot)
  tabela_desp_edu_tot = rbind(dados_desp_edu_tot_2003, dados_desp_edu_tot_2004, dados_desp_edu_tot_2005, dados_desp_edu_tot_2006, dados_desp_edu_tot_2007, dados_desp_edu_tot_2008, dados_desp_edu_tot_2009, dados_desp_edu_tot_2010, dados_desp_edu_tot_2011, dados_desp_edu_tot_2012, dados_desp_edu_tot_2013, dados_desp_edu_tot_2014, dados_desp_edu_tot_2015, dados_desp_edu_tot_2016, dados_desp_edu_tot_2017, dados_desp_edu_tot_2018)
  
#Despesas Saude
  dados_desp_sau_tot_2003 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Saúde - Base Única - SIOPS e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2003, desp_sau_tot = p_2003) %>% select(ano, cod_muni, desp_sau_tot)
  dados_desp_sau_tot_2004 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Saúde - Base Única - SIOPS e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2004, desp_sau_tot = p_2004) %>% select(ano, cod_muni, desp_sau_tot)
  dados_desp_sau_tot_2005 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Saúde - Base Única - SIOPS e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2005, desp_sau_tot = p_2005) %>% select(ano, cod_muni, desp_sau_tot)
  dados_desp_sau_tot_2006 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Saúde - Base Única - SIOPS e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2006, desp_sau_tot = p_2006) %>% select(ano, cod_muni, desp_sau_tot)
  dados_desp_sau_tot_2007 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Saúde - Base Única - SIOPS e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2007, desp_sau_tot = p_2007) %>% select(ano, cod_muni, desp_sau_tot)
  dados_desp_sau_tot_2008 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Saúde - Base Única - SIOPS e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2008, desp_sau_tot = p_2008) %>% select(ano, cod_muni, desp_sau_tot)
  dados_desp_sau_tot_2009 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Saúde - Base Única - SIOPS e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2009, desp_sau_tot = p_2009) %>% select(ano, cod_muni, desp_sau_tot)
  dados_desp_sau_tot_2010 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Saúde - Base Única - SIOPS e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2010, desp_sau_tot = p_2010) %>% select(ano, cod_muni, desp_sau_tot)
  dados_desp_sau_tot_2011 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Saúde - Base Única - SIOPS e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2011, desp_sau_tot = p_2011) %>% select(ano, cod_muni, desp_sau_tot)
  dados_desp_sau_tot_2012 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Saúde - Base Única - SIOPS e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2012, desp_sau_tot = p_2012) %>% select(ano, cod_muni, desp_sau_tot)
  dados_desp_sau_tot_2013 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Saúde - Base Única - SIOPS e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2013, desp_sau_tot = p_2013) %>% select(ano, cod_muni, desp_sau_tot)
  dados_desp_sau_tot_2014 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Saúde - Base Única - SIOPS e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2014, desp_sau_tot = p_2014) %>% select(ano, cod_muni, desp_sau_tot)
  dados_desp_sau_tot_2015 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Saúde - Base Única - SIOPS e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2015, desp_sau_tot = p_2015) %>% select(ano, cod_muni, desp_sau_tot)
  dados_desp_sau_tot_2016 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Saúde - Base Única - SIOPS e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2016, desp_sau_tot = p_2016) %>% select(ano, cod_muni, desp_sau_tot)
  dados_desp_sau_tot_2017 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Saúde - Base Única - SIOPS e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2017, desp_sau_tot = p_2017) %>% select(ano, cod_muni, desp_sau_tot)
  dados_desp_sau_tot_2018 = read_excel('C:/dados/dissertacao/Base Final Despesa Total com Saúde - Base Única - SIOPS e Finbra - Procedimento Completo - Imputar Missings e Outliers.xlsx') %>% mutate(cod_muni = as.numeric(cod_muni), ano = 2018, desp_sau_tot = p_2018) %>% select(ano, cod_muni, desp_sau_tot)
  tabela_desp_sau_tot = rbind(dados_desp_sau_tot_2003, dados_desp_sau_tot_2004, dados_desp_sau_tot_2005, dados_desp_sau_tot_2006, dados_desp_sau_tot_2007, dados_desp_sau_tot_2008, dados_desp_sau_tot_2009, dados_desp_sau_tot_2010, dados_desp_sau_tot_2011, dados_desp_sau_tot_2012, dados_desp_sau_tot_2013, dados_desp_sau_tot_2014, dados_desp_sau_tot_2015, dados_desp_sau_tot_2016, dados_desp_sau_tot_2017, dados_desp_sau_tot_2018)

#Tabela_Pub_alvo
  tabela_pa_pib_pop_4 = left_join (tabela_pa_pib_pop_3, cod_munic_alvo, by = c('cod_munic')) %>%
                        left_join (tabela_desp_pess_tot, by = c('ano', 'cod_muni')) %>%
                        left_join (tabela_desp_pess_atv, by = c('ano', 'cod_muni')) %>%
                        left_join (tabela_desp_pess_ina, by = c('ano', 'cod_muni')) %>%
                        left_join (tabela_desp_invst_pub, by = c('ano', 'cod_muni')) %>%
                        left_join (tabela_desp_sau_tot, by = c('ano', 'cod_muni')) %>%
                        left_join (tabela_desp_edu_tot, by = c('ano', 'cod_muni'))
  
    write.csv2(tabela_pa_pib_pop_4, file = "C:/dados/dissertacao/tabela_pa_pib_pop_4.csv")

    #Tabela 5  
    tabela_pa_pib_pop_5 = tabela_pa_pib_pop_4 %>%
                            mutate(var5_desp_pess_tot = (desp_pess_tot - lag(desp_pess_tot, n = 5)) / lag(desp_pess_tot, n = 5),
                                   var5_desp_pess_atv = (desp_pess_atv - lag(desp_pess_atv, n = 5)) / lag(desp_pess_atv, n = 5),
                                   var5_desp_pess_ina = (desp_pess_ina - lag(desp_pess_ina, n = 5)) / lag(desp_pess_ina, n = 5),
                                   var5_desp_invst_pub = (desp_invst_pub - lag(desp_invst_pub, n = 5)) / lag(desp_invst_pub, n = 5),
                                   var5_desp_sau_tot = (desp_sau_tot - lag(desp_sau_tot, n = 5)) / lag(desp_sau_tot, n = 5),
                                   var5_desp_edu_tot = (desp_edu_tot - lag(desp_edu_tot, n = 5)) / lag(desp_edu_tot, n = 5),
                                   var5_pib_def = (pib_def - lag(pib_def, n = 5)) / lag(pib_def, n = 5),
                                   var5_rec_tot = (rec_tot - lag(rec_tot, n = 5)) / lag(rec_tot, n = 5),
                                   var5_rec_cor = (rec_cor - lag(rec_cor, n = 5)) / lag(rec_cor, n = 5),
                                   var5_rec_cap = (rec_cap - lag(rec_cap, n = 5)) / lag(rec_cap, n = 5),
                                   var5_rec_prop = (rec_prop - lag(rec_prop, n = 5)) / lag(rec_prop, n = 5),
                                   var5_rec_iptu = (rec_iptu - lag(rec_iptu, n = 5)) / lag(rec_iptu, n = 5),
                                   var5_rec_iss = (rec_iss - lag(rec_iss, n = 5)) / lag(rec_iss, n = 5),
                                   var5_rec_itbi = (rec_itbi - lag(rec_itbi, n = 5)) / lag(rec_itbi, n = 5),
                                   var5_pop = (pop - lag(pop, n = 5)) / lag(pop, n = 5),
                                   ind_select = ifelse(ano == 2008, ind_2008, 0) +
                                                 ifelse(ano == 2009, ind_2009, 0) +
                                                 ifelse(ano == 2010, ind_2010, 0) +
                                                 ifelse(ano == 2011, ind_2011, 0) +
                                                 ifelse(ano == 2012, ind_2012, 0) +
                                                 ifelse(ano == 2013, ind_2013, 0) +
                                                 ifelse(ano == 2014, ind_2014, 0) +
                                                 ifelse(ano == 2015, ind_2015, 0) +
                                                 ifelse(ano == 2016, ind_2016, 0) +
                                                 ifelse(ano == 2017, ind_2017, 0),
                                   var_rec_pib = var5_rec_tot / var5_pib_def,
                                   var_gast_pess_tot_pib = var5_desp_pess_tot / var5_pib_def,
                                   var_gast_pess_atv_pib = var5_desp_pess_atv / var5_pib_def
                                   ) %>%
                            filter (ind_select == 1)
    
    write.csv2(tabela_pa_pib_pop_5, file = "C:/dados/dissertacao/tabela_pa_pib_pop_5.csv")

    # Variável Rec/PIB    
      teste <- summary(tabela_pa_pib_pop_5$var_rec_pib)
      minimo <- teste[1]
      lim_inf <-  teste [2] - 1.5* (teste [5] - teste [2])
      pri_quart <- teste[2]
      mediana <- teste [3]
      media <- teste [4]
      terc_quart <- teste [5]
      lim_sup <-  teste [5] + 1.5* (teste [5] - teste [2])
      maximos <- teste [6]
      
      teste <- summary(tabela_pa_pib_pop_5$var_gast_pess_tot_pib)
      minimo_gt <- teste[1]
      lim_inf_gt <-  teste [2] - 1.5* (teste [5] - teste [2])
      pri_quart_gt <- teste[2]
      mediana_gt <- teste [3]
      media_gt <- teste [4]
      terc_quart_gt <- teste [5]
      lim_sup_gt <-  teste [5] + 1.5* (teste [5] - teste [2])
      maximos_gt <- teste [6]
    
      teste <- summary(tabela_pa_pib_pop_5$var_gast_pess_atv_pib)
      minimo_ga <- teste[1]
      lim_inf_ga <-  teste [2] - 1.5* (teste [5] - teste [2])
      pri_quart_ga <- teste[2]
      mediana_ga <- teste [3]
      media_ga <- teste [4]
      terc_quart_ga <- teste [5]
      lim_sup_ga <-  teste [5] + 1.5* (teste [5] - teste [2])
      maximos_ga <- teste [6]
      
  
# Agrupando os municípios:
      tabela_pa_pib_pop_6 = tabela_pa_pib_pop_5 %>%
                                mutate(grp_var_rec_pib = ifelse(var_rec_pib < lim_inf, 1,
                                                                ifelse(var_rec_pib < pri_quart, 2,
                                                                       ifelse(var_rec_pib < mediana, 3,
                                                                              ifelse(var_rec_pib < terc_quart, 4,
                                                                                     ifelse(var_rec_pib < lim_sup, 5, 6))))),
                                       
                                       nm_grp_var_rec_pib = ifelse(var_rec_pib < lim_inf, "Até Outlier inferior",
                                                                ifelse(var_rec_pib < pri_quart, "Até Primeiro Quartil",
                                                                       ifelse(var_rec_pib < mediana, "Até Mediana",
                                                                              ifelse(var_rec_pib < terc_quart, "Até Terceiro Quartil",
                                                                                     ifelse(var_rec_pib < lim_sup, "Até Limite Superior", "Outlier Superior"))))),
                                       grp2_var_rec_pib = ifelse(var_rec_pib < 0.0, 1,
                                                                 ifelse(var_rec_pib < 0.5, 2,
                                                                        ifelse(var_rec_pib < 1.0, 3,
                                                                               ifelse(var_rec_pib < 1.5, 4,
                                                                                      ifelse(var_rec_pib < 2.0, 5, 6))))),
                                       
                                       nm_grp2_var_rec_pib = ifelse(var_rec_pib < 0.0, "Negativos",
                                                                 ifelse(var_rec_pib < 0.5, "Entre 0 e 0.5",
                                                                        ifelse(var_rec_pib < 1.0, "Entre 0.5 e 1.0",
                                                                               ifelse(var_rec_pib < 1.5, "Entre 1.0 e 1.5",
                                                                                      ifelse(var_rec_pib < 2.0, "Entre 1.5 e 2.0", "Maiores que 2.20"))))),
                                       
                                       grp_var_gast_pess_tot_pib = ifelse(var_gast_pess_tot_pib < lim_inf_gt, 1,
                                                                ifelse(var_gast_pess_tot_pib < pri_quart_gt, 2,
                                                                       ifelse(var_gast_pess_tot_pib < mediana_gt, 3,
                                                                              ifelse(var_gast_pess_tot_pib < terc_quart_gt, 4,
                                                                                     ifelse(var_gast_pess_tot_pib < lim_sup_gt, 5, 6))))),
                                       
                                       nm_grp_var_gast_pess_tot_pib = ifelse(var_gast_pess_tot_pib < lim_inf_gt, "Até Outlier inferior",
                                                                   ifelse(var_gast_pess_tot_pib < pri_quart_gt, "Até Primeiro Quartil",
                                                                          ifelse(var_gast_pess_tot_pib < mediana_gt, "Até Mediana",
                                                                                 ifelse(var_gast_pess_tot_pib < terc_quart_gt, "Até Terceiro Quartil",
                                                                                        ifelse(var_gast_pess_tot_pib < lim_sup_gt, "Até Limite Superior", "Outlier Superior"))))),
                                       
                                       grp2_var_gast_pess_tot_pib = ifelse(var_gast_pess_tot_pib < 0.0, 1,
                                                                 ifelse(var_gast_pess_tot_pib < 0.5, 2,
                                                                        ifelse(var_gast_pess_tot_pib < 1.0, 3,
                                                                               ifelse(var_gast_pess_tot_pib < 1.5, 4,
                                                                                      ifelse(var_gast_pess_tot_pib < 2.0, 5, 6))))),
                                       
                                       nm_grp2_var_gast_pess_tot_pib = ifelse(var_gast_pess_tot_pib < 0.0, "Negativos",
                                                                    ifelse(var_gast_pess_tot_pib < 0.5, "Entre 0 e 0.5",
                                                                           ifelse(var_gast_pess_tot_pib < 1.0, "Entre 0.5 e 1.0",
                                                                                  ifelse(var_gast_pess_tot_pib < 1.5, "Entre 1.0 e 1.5",
                                                                                         ifelse(var_gast_pess_tot_pib < 2.0, "Entre 1.5 e 2.0", "Maiores que 2.20"))))),
                                       
                                       grp_var_gast_pess_atv_pib = ifelse(var_gast_pess_tot_pib < lim_inf_ga, 1,
                                                                          ifelse(var_gast_pess_atv_pib < pri_quart_ga, 2,
                                                                                 ifelse(var_gast_pess_atv_pib < mediana_ga, 3,
                                                                                        ifelse(var_gast_pess_atv_pib < terc_quart_ga, 4,
                                                                                               ifelse(var_gast_pess_atv_pib < lim_sup_ga, 5, 6))))),
                                       
                                       nm_grp_var_gast_pess_atv_pib = ifelse(var_gast_pess_atv_pib < lim_inf_ga, "Até Outlier inferior",
                                                                             ifelse(var_gast_pess_atv_pib < pri_quart_ga, "Até Primeiro Quartil",
                                                                                    ifelse(var_gast_pess_atv_pib < mediana_ga, "Até Mediana",
                                                                                           ifelse(var_gast_pess_atv_pib < terc_quart_ga, "Até Terceiro Quartil",
                                                                                                  ifelse(var_gast_pess_atv_pib < lim_sup_ga, "Até Limite Superior", "Outlier Superior"))))),
                                       
                                       grp2_var_gast_pess_atv_pib = ifelse(var_gast_pess_atv_pib < 0.0, 1,
                                                                           ifelse(var_gast_pess_atv_pib < 0.5, 2,
                                                                                  ifelse(var_gast_pess_atv_pib < 1.0, 3,
                                                                                         ifelse(var_gast_pess_atv_pib < 1.5, 4,
                                                                                                ifelse(var_gast_pess_atv_pib < 2.0, 5, 6))))),
                                       
                                       nm_grp2_var_gast_pess_atv_pib = ifelse(var_gast_pess_atv_pib < 0.0, "Negativos",
                                                                              ifelse(var_gast_pess_atv_pib < 0.5, "Entre 0 e 0.5",
                                                                                     ifelse(var_gast_pess_atv_pib < 1.0, "Entre 0.5 e 1.0",
                                                                                            ifelse(var_gast_pess_atv_pib < 1.5, "Entre 1.0 e 1.5",
                                                                                                   ifelse(var_gast_pess_atv_pib < 2.0, "Entre 1.5 e 2.0", "Maiores que 2.20")))))
                                       )
      write.csv2(tabela_pa_pib_pop_6, file = "C:/dados/dissertacao/tabela_pa_pib_pop_6.csv")

  #Consolidando base final   
      tabela_pa_pib_pop_7 = left_join(tabela_pa_pib_pop_6, rais_total, by = c('ano', 'cod_muni')) 
      write.csv2(tabela_pa_pib_pop_7, file = "C:/dados/dissertacao/tabela_pa_pib_pop_7.csv")

      cor(tabela_pa_pib_pop_7$var5_rec, tabela_pa_pib_pop_7$var5_sum_qtd_vinc_est_L)
  
  
  
    