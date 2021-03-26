
library(tidyverse)
library(readr)
library(dplyr)
library(readxl)
library(data.table)
library(purrr)
library(gridExtra)


# Importando População 2010 #
dados_pop_2010 = read.csv2('C:/dados/dissertacao/tabela608.csv', skip = 4) %>% mutate(cod_munic = as.numeric(cod_munic), ano = 2010) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'Total') %>% select(ano, cod_munic, munic, pop)
dados_pop_2010_fix = read.csv2('C:/dados/dissertacao/tabela608.csv', skip = 4) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop_2010 = 'Total') %>% select(cod_munic, pop_2010)
str(dados_pop_2010)
str(dados_pop_2010_fix)


# Importando População 2007 #
dados_pop_2007 = read.csv2('C:/dados/dissertacao/tabela793.csv', skip = 3) %>% mutate (ano = 2007) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2007') %>% select(ano, cod_munic, munic, pop)
str(dados_pop_2007)


# Importando População restante (2000 até 2020) #
dados_pop_2001 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2001) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2001') %>% select(ano, cod_munic, munic, pop)
dados_pop_2002 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2002) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2002') %>% select(ano, cod_munic, munic, pop)
dados_pop_2003 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2003) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2003') %>% select(ano, cod_munic, munic, pop)
dados_pop_2004 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2004) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2004') %>% select(ano, cod_munic, munic, pop)
dados_pop_2005 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2005) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2005') %>% select(ano, cod_munic, munic, pop)
dados_pop_2006 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2006) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2006') %>% select(ano, cod_munic, munic, pop)
dados_pop_2008 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2008) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2008') %>% select(ano, cod_munic, munic, pop)
dados_pop_2009 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2009) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2009') %>% select(ano, cod_munic, munic, pop)
dados_pop_2011 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2011) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2011') %>% select(ano, cod_munic, munic, pop)
dados_pop_2012 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2012) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2012') %>% select(ano, cod_munic, munic, pop)
dados_pop_2013 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2013) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2013') %>% select(ano, cod_munic, munic, pop)
dados_pop_2014 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2014) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2014') %>% select(ano, cod_munic, munic, pop)
dados_pop_2015 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2015) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2015') %>% select(ano, cod_munic, munic, pop)
dados_pop_2016 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2016) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2016') %>% select(ano, cod_munic, munic, pop)
dados_pop_2017 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2017) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2017') %>% select(ano, cod_munic, munic, pop)
dados_pop_2018 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2018) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2018') %>% select(ano, cod_munic, munic, pop)
dados_pop_2019 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2019) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2019') %>% select(ano, cod_munic, munic, pop)
dados_pop_2020 = read.csv2('C:/dados/dissertacao/tabela6579.csv', skip = 3) %>% mutate (ano = 2020) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'X2020') %>% select(ano, cod_munic, munic, pop)
tabela_pop = rbind (dados_pop_2002, dados_pop_2003, dados_pop_2004, dados_pop_2005, 
                    dados_pop_2006, dados_pop_2007, dados_pop_2008, dados_pop_2009, dados_pop_2010,
                    dados_pop_2011, dados_pop_2012, dados_pop_2013, dados_pop_2014, dados_pop_2015, 
                    dados_pop_2016, dados_pop_2017, dados_pop_2018) 
#OBS: A tabela 2010 está sendo colocada como base pois ela é o censo.



# Importando PIB 2002-2018 #
dados_pib_2002 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2002) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2002') %>% select(ano, cod_munic, munic, pib)
dados_pib_2003 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2003) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2003') %>% select(ano, cod_munic, munic, pib)
dados_pib_2004 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2004) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2004') %>% select(ano, cod_munic, munic, pib)
dados_pib_2005 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2005) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2005') %>% select(ano, cod_munic, munic, pib)
dados_pib_2006 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2006) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2006') %>% select(ano, cod_munic, munic, pib)
dados_pib_2007 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2007) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2007') %>% select(ano, cod_munic, munic, pib)
dados_pib_2008 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2008) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2008') %>% select(ano, cod_munic, munic, pib)
dados_pib_2009 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2009) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2009') %>% select(ano, cod_munic, munic, pib)
dados_pib_2010 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2010) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2010') %>% select(ano, cod_munic, munic, pib)
dados_pib_2011 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2011) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2011') %>% select(ano, cod_munic, munic, pib)
dados_pib_2012 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2012) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2012') %>% select(ano, cod_munic, munic, pib)
dados_pib_2013 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2013) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2013') %>% select(ano, cod_munic, munic, pib)
dados_pib_2014 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2014) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2014') %>% select(ano, cod_munic, munic, pib)
dados_pib_2015 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2015) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2015') %>% select(ano, cod_munic, munic, pib)
dados_pib_2016 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2016) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2016') %>% select(ano, cod_munic, munic, pib)
dados_pib_2017 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2017) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2017') %>% select(ano, cod_munic, munic, pib)
dados_pib_2018 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2018) %>% rename(cod_munic = 'cod', munic = 'mun', pib = 'X2018') %>% select(ano, cod_munic, munic, pib)
tabela_pib = rbind(dados_pib_2002, dados_pib_2003, dados_pib_2004, dados_pib_2005, dados_pib_2006, dados_pib_2007, 
                   dados_pib_2008, dados_pib_2009, dados_pib_2010, dados_pib_2011, dados_pib_2012, dados_pib_2013, 
                   dados_pib_2014, dados_pib_2015, dados_pib_2016, dados_pib_2017, dados_pib_2018)

#Deflator
dados_deflator = read.csv('C:/dados/dissertacao/deflator.csv', sep = ";") %>% rename ('ano' =  'ï..ano')

#Importando Receitas Totais
dados_rec_tot_2003 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 2) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2003, rec_tot = p_2003) %>% select(ano, cod_muni, rec_tot)
dados_rec_tot_2004 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 2) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2004, rec_tot = p_2004) %>% select(ano, cod_muni, rec_tot)
dados_rec_tot_2005 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 2) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2005, rec_tot = p_2005) %>% select(ano, cod_muni, rec_tot)
dados_rec_tot_2006 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 2) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2006, rec_tot = p_2006) %>% select(ano, cod_muni, rec_tot)
dados_rec_tot_2007 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 2) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2007, rec_tot = p_2007) %>% select(ano, cod_muni, rec_tot)
dados_rec_tot_2008 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 2) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2008, rec_tot = p_2008) %>% select(ano, cod_muni, rec_tot)
dados_rec_tot_2009 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 2) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2009, rec_tot = p_2009) %>% select(ano, cod_muni, rec_tot)
dados_rec_tot_2010 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 2) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2010, rec_tot = p_2010) %>% select(ano, cod_muni, rec_tot)
dados_rec_tot_2011 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 2) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2011, rec_tot = p_2011) %>% select(ano, cod_muni, rec_tot)
dados_rec_tot_2012 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 2) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2012, rec_tot = p_2012) %>% select(ano, cod_muni, rec_tot)
dados_rec_tot_2013 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 2) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2013, rec_tot = p_2013) %>% select(ano, cod_muni, rec_tot)
dados_rec_tot_2014 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 2) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2014, rec_tot = p_2014) %>% select(ano, cod_muni, rec_tot)
dados_rec_tot_2015 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 2) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2015, rec_tot = p_2015) %>% select(ano, cod_muni, rec_tot)
dados_rec_tot_2016 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 2) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2016, rec_tot = p_2016) %>% select(ano, cod_muni, rec_tot)
dados_rec_tot_2017 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 2) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2017, rec_tot = p_2017) %>% select(ano, cod_muni, rec_tot)
dados_rec_tot_2018 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 2) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2018, rec_tot = p_2018) %>% select(ano, cod_muni, rec_tot)
tabela_rec_tot = rbind(dados_rec_tot_2003 , dados_rec_tot_2004 , dados_rec_tot_2005 , dados_rec_tot_2006 , dados_rec_tot_2007 , dados_rec_tot_2008 , dados_rec_tot_2009 , dados_rec_tot_2010 , dados_rec_tot_2011 , dados_rec_tot_2012 , dados_rec_tot_2013 , dados_rec_tot_2014 , dados_rec_tot_2015 , dados_rec_tot_2016 , dados_rec_tot_2017 , dados_rec_tot_2018 )
str(tabela_rec_tot)

dados_rec_cor_2003 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 3) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2003, rec_cor = p_2003) %>% select(ano, cod_muni, rec_cor)
dados_rec_cor_2004 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 3) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2004, rec_cor = p_2004) %>% select(ano, cod_muni, rec_cor)
dados_rec_cor_2005 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 3) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2005, rec_cor = p_2005) %>% select(ano, cod_muni, rec_cor)
dados_rec_cor_2006 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 3) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2006, rec_cor = p_2006) %>% select(ano, cod_muni, rec_cor)
dados_rec_cor_2007 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 3) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2007, rec_cor = p_2007) %>% select(ano, cod_muni, rec_cor)
dados_rec_cor_2008 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 3) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2008, rec_cor = p_2008) %>% select(ano, cod_muni, rec_cor)
dados_rec_cor_2009 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 3) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2009, rec_cor = p_2009) %>% select(ano, cod_muni, rec_cor)
dados_rec_cor_2010 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 3) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2010, rec_cor = p_2010) %>% select(ano, cod_muni, rec_cor)
dados_rec_cor_2011 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 3) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2011, rec_cor = p_2011) %>% select(ano, cod_muni, rec_cor)
dados_rec_cor_2012 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 3) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2012, rec_cor = p_2012) %>% select(ano, cod_muni, rec_cor)
dados_rec_cor_2013 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 3) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2013, rec_cor = p_2013) %>% select(ano, cod_muni, rec_cor)
dados_rec_cor_2014 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 3) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2014, rec_cor = p_2014) %>% select(ano, cod_muni, rec_cor)
dados_rec_cor_2015 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 3) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2015, rec_cor = p_2015) %>% select(ano, cod_muni, rec_cor)
dados_rec_cor_2016 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 3) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2016, rec_cor = p_2016) %>% select(ano, cod_muni, rec_cor)
dados_rec_cor_2017 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 3) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2017, rec_cor = p_2017) %>% select(ano, cod_muni, rec_cor)
dados_rec_cor_2018 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 3) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2018, rec_cor = p_2018) %>% select(ano, cod_muni, rec_cor)
tabela_rec_cor = rbind(dados_rec_cor_2003 , dados_rec_cor_2004 , dados_rec_cor_2005 , dados_rec_cor_2006 , dados_rec_cor_2007 , dados_rec_cor_2008 , dados_rec_cor_2009 , dados_rec_cor_2010 , dados_rec_cor_2011 , dados_rec_cor_2012 , dados_rec_cor_2013 , dados_rec_cor_2014 , dados_rec_cor_2015 , dados_rec_cor_2016 , dados_rec_cor_2017 , dados_rec_cor_2018 )

dados_rec_cap_2003 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 4) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2003, rec_cap = p_2003) %>% select(ano, cod_muni, rec_cap)
dados_rec_cap_2004 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 4) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2004, rec_cap = p_2004) %>% select(ano, cod_muni, rec_cap)
dados_rec_cap_2005 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 4) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2005, rec_cap = p_2005) %>% select(ano, cod_muni, rec_cap)
dados_rec_cap_2006 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 4) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2006, rec_cap = p_2006) %>% select(ano, cod_muni, rec_cap)
dados_rec_cap_2007 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 4) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2007, rec_cap = p_2007) %>% select(ano, cod_muni, rec_cap)
dados_rec_cap_2008 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 4) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2008, rec_cap = p_2008) %>% select(ano, cod_muni, rec_cap)
dados_rec_cap_2009 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 4) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2009, rec_cap = p_2009) %>% select(ano, cod_muni, rec_cap)
dados_rec_cap_2010 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 4) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2010, rec_cap = p_2010) %>% select(ano, cod_muni, rec_cap)
dados_rec_cap_2011 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 4) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2011, rec_cap = p_2011) %>% select(ano, cod_muni, rec_cap)
dados_rec_cap_2012 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 4) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2012, rec_cap = p_2012) %>% select(ano, cod_muni, rec_cap)
dados_rec_cap_2013 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 4) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2013, rec_cap = p_2013) %>% select(ano, cod_muni, rec_cap)
dados_rec_cap_2014 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 4) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2014, rec_cap = p_2014) %>% select(ano, cod_muni, rec_cap)
dados_rec_cap_2015 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 4) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2015, rec_cap = p_2015) %>% select(ano, cod_muni, rec_cap)
dados_rec_cap_2016 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 4) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2016, rec_cap = p_2016) %>% select(ano, cod_muni, rec_cap)
dados_rec_cap_2017 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 4) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2017, rec_cap = p_2017) %>% select(ano, cod_muni, rec_cap)
dados_rec_cap_2018 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 4) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2018, rec_cap = p_2018) %>% select(ano, cod_muni, rec_cap)
tabela_rec_cap = rbind(dados_rec_cap_2003 , dados_rec_cap_2004 , dados_rec_cap_2005 , dados_rec_cap_2006 , dados_rec_cap_2007 , dados_rec_cap_2008 , dados_rec_cap_2009 , dados_rec_cap_2010 , dados_rec_cap_2011 , dados_rec_cap_2012 , dados_rec_cap_2013 , dados_rec_cap_2014 , dados_rec_cap_2015 , dados_rec_cap_2016 , dados_rec_cap_2017 , dados_rec_cap_2018 )

dados_rec_prop_2003 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 5) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2003, rec_prop = p_2003) %>% select(ano, cod_muni, rec_prop)
dados_rec_prop_2004 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 5) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2004, rec_prop = p_2004) %>% select(ano, cod_muni, rec_prop)
dados_rec_prop_2005 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 5) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2005, rec_prop = p_2005) %>% select(ano, cod_muni, rec_prop)
dados_rec_prop_2006 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 5) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2006, rec_prop = p_2006) %>% select(ano, cod_muni, rec_prop)
dados_rec_prop_2007 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 5) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2007, rec_prop = p_2007) %>% select(ano, cod_muni, rec_prop)
dados_rec_prop_2008 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 5) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2008, rec_prop = p_2008) %>% select(ano, cod_muni, rec_prop)
dados_rec_prop_2009 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 5) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2009, rec_prop = p_2009) %>% select(ano, cod_muni, rec_prop)
dados_rec_prop_2010 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 5) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2010, rec_prop = p_2010) %>% select(ano, cod_muni, rec_prop)
dados_rec_prop_2011 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 5) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2011, rec_prop = p_2011) %>% select(ano, cod_muni, rec_prop)
dados_rec_prop_2012 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 5) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2012, rec_prop = p_2012) %>% select(ano, cod_muni, rec_prop)
dados_rec_prop_2013 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 5) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2013, rec_prop = p_2013) %>% select(ano, cod_muni, rec_prop)
dados_rec_prop_2014 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 5) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2014, rec_prop = p_2014) %>% select(ano, cod_muni, rec_prop)
dados_rec_prop_2015 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 5) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2015, rec_prop = p_2015) %>% select(ano, cod_muni, rec_prop)
dados_rec_prop_2016 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 5) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2016, rec_prop = p_2016) %>% select(ano, cod_muni, rec_prop)
dados_rec_prop_2017 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 5) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2017, rec_prop = p_2017) %>% select(ano, cod_muni, rec_prop)
dados_rec_prop_2018 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 5) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2018, rec_prop = p_2018) %>% select(ano, cod_muni, rec_prop)
tabela_rec_prop = rbind(dados_rec_prop_2003 , dados_rec_prop_2004 , dados_rec_prop_2005 , dados_rec_prop_2006 , dados_rec_prop_2007 , dados_rec_prop_2008 , dados_rec_prop_2009 , dados_rec_prop_2010 , dados_rec_prop_2011 , dados_rec_prop_2012 , dados_rec_prop_2013 , dados_rec_prop_2014 , dados_rec_prop_2015 , dados_rec_prop_2016 , dados_rec_prop_2017 , dados_rec_prop_2018 )

dados_rec_iptu_2003 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 6) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2003, rec_iptu = p_2003) %>% select(ano, cod_muni, rec_iptu)
dados_rec_iptu_2004 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 6) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2004, rec_iptu = p_2004) %>% select(ano, cod_muni, rec_iptu)
dados_rec_iptu_2005 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 6) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2005, rec_iptu = p_2005) %>% select(ano, cod_muni, rec_iptu)
dados_rec_iptu_2006 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 6) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2006, rec_iptu = p_2006) %>% select(ano, cod_muni, rec_iptu)
dados_rec_iptu_2007 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 6) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2007, rec_iptu = p_2007) %>% select(ano, cod_muni, rec_iptu)
dados_rec_iptu_2008 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 6) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2008, rec_iptu = p_2008) %>% select(ano, cod_muni, rec_iptu)
dados_rec_iptu_2009 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 6) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2009, rec_iptu = p_2009) %>% select(ano, cod_muni, rec_iptu)
dados_rec_iptu_2010 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 6) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2010, rec_iptu = p_2010) %>% select(ano, cod_muni, rec_iptu)
dados_rec_iptu_2011 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 6) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2011, rec_iptu = p_2011) %>% select(ano, cod_muni, rec_iptu)
dados_rec_iptu_2012 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 6) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2012, rec_iptu = p_2012) %>% select(ano, cod_muni, rec_iptu)
dados_rec_iptu_2013 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 6) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2013, rec_iptu = p_2013) %>% select(ano, cod_muni, rec_iptu)
dados_rec_iptu_2014 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 6) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2014, rec_iptu = p_2014) %>% select(ano, cod_muni, rec_iptu)
dados_rec_iptu_2015 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 6) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2015, rec_iptu = p_2015) %>% select(ano, cod_muni, rec_iptu)
dados_rec_iptu_2016 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 6) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2016, rec_iptu = p_2016) %>% select(ano, cod_muni, rec_iptu)
dados_rec_iptu_2017 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 6) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2017, rec_iptu = p_2017) %>% select(ano, cod_muni, rec_iptu)
dados_rec_iptu_2018 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 6) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2018, rec_iptu = p_2018) %>% select(ano, cod_muni, rec_iptu)
tabela_rec_iptu = rbind(dados_rec_iptu_2003 , dados_rec_iptu_2004 , dados_rec_iptu_2005 , dados_rec_iptu_2006 , dados_rec_iptu_2007 , dados_rec_iptu_2008 , dados_rec_iptu_2009 , dados_rec_iptu_2010 , dados_rec_iptu_2011 , dados_rec_iptu_2012 , dados_rec_iptu_2013 , dados_rec_iptu_2014 , dados_rec_iptu_2015 , dados_rec_iptu_2016 , dados_rec_iptu_2017 , dados_rec_iptu_2018 )

dados_rec_iss_2003 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 7) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2003, rec_iss = p_2003) %>% select(ano, cod_muni, rec_iss)
dados_rec_iss_2004 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 7) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2004, rec_iss = p_2004) %>% select(ano, cod_muni, rec_iss)
dados_rec_iss_2005 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 7) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2005, rec_iss = p_2005) %>% select(ano, cod_muni, rec_iss)
dados_rec_iss_2006 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 7) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2006, rec_iss = p_2006) %>% select(ano, cod_muni, rec_iss)
dados_rec_iss_2007 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 7) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2007, rec_iss = p_2007) %>% select(ano, cod_muni, rec_iss)
dados_rec_iss_2008 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 7) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2008, rec_iss = p_2008) %>% select(ano, cod_muni, rec_iss)
dados_rec_iss_2009 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 7) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2009, rec_iss = p_2009) %>% select(ano, cod_muni, rec_iss)
dados_rec_iss_2010 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 7) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2010, rec_iss = p_2010) %>% select(ano, cod_muni, rec_iss)
dados_rec_iss_2011 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 7) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2011, rec_iss = p_2011) %>% select(ano, cod_muni, rec_iss)
dados_rec_iss_2012 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 7) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2012, rec_iss = p_2012) %>% select(ano, cod_muni, rec_iss)
dados_rec_iss_2013 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 7) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2013, rec_iss = p_2013) %>% select(ano, cod_muni, rec_iss)
dados_rec_iss_2014 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 7) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2014, rec_iss = p_2014) %>% select(ano, cod_muni, rec_iss)
dados_rec_iss_2015 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 7) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2015, rec_iss = p_2015) %>% select(ano, cod_muni, rec_iss)
dados_rec_iss_2016 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 7) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2016, rec_iss = p_2016) %>% select(ano, cod_muni, rec_iss)
dados_rec_iss_2017 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 7) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2017, rec_iss = p_2017) %>% select(ano, cod_muni, rec_iss)
dados_rec_iss_2018 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 7) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2018, rec_iss = p_2018) %>% select(ano, cod_muni, rec_iss)
tabela_rec_iss = rbind(dados_rec_iss_2003 , dados_rec_iss_2004 , dados_rec_iss_2005 , dados_rec_iss_2006 , dados_rec_iss_2007 , dados_rec_iss_2008 , dados_rec_iss_2009 , dados_rec_iss_2010 , dados_rec_iss_2011 , dados_rec_iss_2012 , dados_rec_iss_2013 , dados_rec_iss_2014 , dados_rec_iss_2015 , dados_rec_iss_2016 , dados_rec_iss_2017 , dados_rec_iss_2018 )

dados_rec_itbi_2003 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 8) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2003, rec_itbi = p_2003) %>% select(ano, cod_muni, rec_itbi)
dados_rec_itbi_2004 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 8) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2004, rec_itbi = p_2004) %>% select(ano, cod_muni, rec_itbi)
dados_rec_itbi_2005 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 8) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2005, rec_itbi = p_2005) %>% select(ano, cod_muni, rec_itbi)
dados_rec_itbi_2006 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 8) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2006, rec_itbi = p_2006) %>% select(ano, cod_muni, rec_itbi)
dados_rec_itbi_2007 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 8) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2007, rec_itbi = p_2007) %>% select(ano, cod_muni, rec_itbi)
dados_rec_itbi_2008 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 8) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2008, rec_itbi = p_2008) %>% select(ano, cod_muni, rec_itbi)
dados_rec_itbi_2009 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 8) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2009, rec_itbi = p_2009) %>% select(ano, cod_muni, rec_itbi)
dados_rec_itbi_2010 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 8) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2010, rec_itbi = p_2010) %>% select(ano, cod_muni, rec_itbi)
dados_rec_itbi_2011 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 8) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2011, rec_itbi = p_2011) %>% select(ano, cod_muni, rec_itbi)
dados_rec_itbi_2012 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 8) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2012, rec_itbi = p_2012) %>% select(ano, cod_muni, rec_itbi)
dados_rec_itbi_2013 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 8) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2013, rec_itbi = p_2013) %>% select(ano, cod_muni, rec_itbi)
dados_rec_itbi_2014 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 8) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2014, rec_itbi = p_2014) %>% select(ano, cod_muni, rec_itbi)
dados_rec_itbi_2015 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 8) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2015, rec_itbi = p_2015) %>% select(ano, cod_muni, rec_itbi)
dados_rec_itbi_2016 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 8) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2016, rec_itbi = p_2016) %>% select(ano, cod_muni, rec_itbi)
dados_rec_itbi_2017 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 8) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2017, rec_itbi = p_2017) %>% select(ano, cod_muni, rec_itbi)
dados_rec_itbi_2018 = read_excel('C:/dados/dissertacao/200730_base_receitas_municipais.xlsx', sheet = 8) %>% mutate(cod_muni = as.numeric(cod_munic), ano = 2018, rec_itbi = p_2018) %>% select(ano, cod_muni, rec_itbi)
tabela_rec_itbi = rbind(dados_rec_itbi_2003 , dados_rec_itbi_2004 , dados_rec_itbi_2005 , dados_rec_itbi_2006 , dados_rec_itbi_2007 , dados_rec_itbi_2008 , dados_rec_itbi_2009 , dados_rec_itbi_2010 , dados_rec_itbi_2011 , dados_rec_itbi_2012 , dados_rec_itbi_2013 , dados_rec_itbi_2014 , dados_rec_itbi_2015 , dados_rec_itbi_2016 , dados_rec_itbi_2017 , dados_rec_itbi_2018 )

#Capturando a totalidade dos municípios
tabela_pub_alvo_temp = distinct(rbind(select(tabela_pib, cod_munic, munic), select(tabela_pop, cod_munic, munic)))
str(tabela_pub_alvo_temp)
str(distinct(select(tabela_pub_alvo_temp, cod_munic)))
tabela_pub_alvo_2002 = tabela_pub_alvo_temp %>% mutate (ano = 2002, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo_2003 = tabela_pub_alvo_temp %>% mutate (ano = 2003, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo_2004 = tabela_pub_alvo_temp %>% mutate (ano = 2004, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo_2005 = tabela_pub_alvo_temp %>% mutate (ano = 2005, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo_2006 = tabela_pub_alvo_temp %>% mutate (ano = 2006, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo_2007 = tabela_pub_alvo_temp %>% mutate (ano = 2007, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo_2008 = tabela_pub_alvo_temp %>% mutate (ano = 2008, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo_2009 = tabela_pub_alvo_temp %>% mutate (ano = 2009, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo_2010 = tabela_pub_alvo_temp %>% mutate (ano = 2010, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo_2011 = tabela_pub_alvo_temp %>% mutate (ano = 2011, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo_2012 = tabela_pub_alvo_temp %>% mutate (ano = 2012, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo_2013 = tabela_pub_alvo_temp %>% mutate (ano = 2013, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo_2014 = tabela_pub_alvo_temp %>% mutate (ano = 2014, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo_2015 = tabela_pub_alvo_temp %>% mutate (ano = 2015, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo_2016 = tabela_pub_alvo_temp %>% mutate (ano = 2016, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo_2017 = tabela_pub_alvo_temp %>% mutate (ano = 2017, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo_2018 = tabela_pub_alvo_temp %>% mutate (ano = 2018, cod_muni = trunc(cod_munic/10,0))
tabela_pub_alvo = rbind(tabela_pub_alvo_2002, tabela_pub_alvo_2003, tabela_pub_alvo_2004, tabela_pub_alvo_2005, 
                        tabela_pub_alvo_2006, tabela_pub_alvo_2007, tabela_pub_alvo_2008, tabela_pub_alvo_2009, 
                        tabela_pub_alvo_2010, tabela_pub_alvo_2011, tabela_pub_alvo_2012, tabela_pub_alvo_2013, 
                        tabela_pub_alvo_2014, tabela_pub_alvo_2015, tabela_pub_alvo_2016, tabela_pub_alvo_2017, 
                        tabela_pub_alvo_2018) %>%
  select (ano, cod_munic, cod_muni, munic)


#Verificações
str(tabela_pub_alvo)
str(tabela_pib)
str(tabela_pop)

write.csv2(tabela_pib, file = "C:/dados/dissertacao/tabela_pib.csv")
write.csv2(tabela_pop, file = "C:/dados/dissertacao/tabela_pop.csv")


#Incorporando as variáveis de PIB, População e Receitas
tabela_pa_pib_pop_1 = left_join (tabela_pub_alvo, tabela_pib, by = c('ano', 'cod_munic', 'munic')) %>%
  left_join (tabela_pop, by = c('ano', 'cod_munic', 'munic')) %>%
  left_join (dados_pop_2010_fix, by = c('cod_munic')) %>%
  left_join (dados_deflator, by = c('ano')) %>%
  left_join (tabela_rec_tot, by = c('ano', 'cod_muni')) %>%
  left_join (tabela_rec_cor, by = c('ano', 'cod_muni')) %>%
  left_join (tabela_rec_cap, by = c('ano', 'cod_muni')) %>%
  left_join (tabela_rec_prop, by = c('ano', 'cod_muni')) %>%
  left_join (tabela_rec_iptu, by = c('ano', 'cod_muni')) %>%
  left_join (tabela_rec_iss, by = c('ano', 'cod_muni')) %>%
  left_join (tabela_rec_itbi, by = c('ano', 'cod_muni')) %>%
  mutate(pib_def = pib/aplic, pib_def_pc = pib_def / pop) 
str(tabela_pa_pib_pop_1)

#Verificações
str(tabela_pa_pib_pop_1)
filter(tabela_pa_pib_pop_1, is.na(pib))
filter(tabela_pa_pib_pop_1, is.na(pop))

#Calculando Porte, Variações no PIB de 5, 10 e 15 anos  
tabela_pa_pib_pop_2 = tabela_pa_pib_pop_1 %>%
  select(ano, cod_munic, cod_muni, munic, pop, pop_2010, pib, pib_def, pib_def_pc, rec_tot, 
         rec_cor, rec_cap, rec_prop, rec_iptu, rec_iss, rec_itbi) %>%
  group_by(cod_munic) %>%
  mutate(porte = ifelse(pop <= 5000, 1, 
                        ifelse(pop <= 10000, 2, 
                               ifelse(pop <= 20000, 3, 
                                      ifelse(pop <= 50000, 4,
                                             ifelse(pop <= 100000, 5,
                                                    ifelse(pop <= 500000, 6,
                                                           ifelse(pop > 500000, 7, 0)
                                                    )
                                             )
                                      )
                               )
                        )
  ),
  
  porte_2010 = ifelse(pop_2010 <= 5000, 1, 
                      ifelse(pop_2010 <= 10000, 2, 
                             ifelse(pop_2010 <= 20000, 3, 
                                    ifelse(pop_2010 <= 50000, 4,
                                           ifelse(pop_2010 <= 100000, 5,
                                                  ifelse(pop_2010 <= 500000, 6,
                                                         ifelse(pop_2010 > 500000, 7, 0)
                                                  )
                                           )
                                    )
                             )
                      )
  ),
  
  grp_porte = ifelse(porte %in% c('1', '2', '3'), 1, 2),
  grp_porte_2010 = ifelse(porte_2010 %in% c('1', '2', '3'), 1, 2),
  ind_novos = ifelse(cod_munic %in% c(1504752, 2200954, 2206720, 4212650, 4220000, 
                                      4314548, 5003900, 5006275, 5104526, 5104542, 
                                      5300108, 2605459),1,0),
  lag5_pib = lag(pib, n = 5),
  lag5_pib_def = lag(pib_def, n = 5),
  var5_pib = (pib - lag5_pib)/lag5_pib, 
  var5_pib_def = (pib_def - lag5_pib_def)/lag5_pib_def,
  
  lag5_rec = lag(rec_tot, n = 5),
  var5_rec = (rec_tot - lag5_rec)/lag5_rec, 
  )

tabela_pa_pib_pop_2 = filter(tabela_pa_pib_pop_2, ind_novos == 0)
write.csv2(tabela_pa_pib_pop_2, file = "C:/dados/dissertacao/tabela_pa_pib_pop_2.csv")

#######################################################
#Análise descritiva
# Variação pib_def
#######################################################

teste <- tapply(tabela_pa_pib_pop_2$pib_def, tabela_pa_pib_pop_2$ano, summary)
teste

minimo <- numeric(0)
lim_inf <- numeric(0)
pri_quart <- numeric(0)
mediana <- numeric(0)
media <- numeric(0)
terc_quart <- numeric(0)
lim_sup <- numeric(0)
maximos <- numeric(0)
Nas <- numeric(0)
ano_fim <- numeric(0)
Num <- numeric(0)

for(i in 1:17){
  ano_fim[i] <- 2001 + i
  Num[i] <- i
  minimo[i] <- teste [[c(i,1)]]
  lim_inf [i] <-  teste [[c(i,2)]] - 1.5* (teste [[c(i,5)]] - teste [[c(i,2)]])
  pri_quart[i] <- teste [[c(i,2)]]
  mediana[i] <- teste [[c(i,3)]]
  media[i] <- teste [[c(i,4)]]
  terc_quart[i] <- teste [[c(i,5)]]
  lim_sup [i] <-  teste [[c(i,5)]] + 1.5* (teste [[c(i,5)]] - teste [[c(i,2)]])
  maximos[i] <- teste [[c(i,6)]]
}

teste4 <- data.frame(Num, ano_fim, minimo,lim_inf, pri_quart, mediana, media, terc_quart, lim_sup, maximos)
write.csv2(teste4, file = "C:/dados/dissertacao/teste4.csv")


##############################################
# Teste 5a - Estudo das Variações - 5 anos
##############################################

# Variação pib_def
teste <- tapply(tabela_pa_pib_pop_2$var5_pib_def, tabela_pa_pib_pop_2$ano, summary)
teste

minimo <- numeric(0)
lim_inf <- numeric(0)
pri_quart <- numeric(0)
mediana <- numeric(0)
media <- numeric(0)
terc_quart <- numeric(0)
lim_sup <- numeric(0)
maximos <- numeric(0)
Nas <- numeric(0)
ano_fim <- numeric(0)
Num <- numeric(0)

for(i in 1:17){
  ano_fim[i] <- 2001 + i
  Num[i] <- i
  minimo[i] <- teste [[c(i,1)]]
  lim_inf [i] <-  teste [[c(i,2)]] - 1.5* (teste [[c(i,5)]] - teste [[c(i,2)]])
  pri_quart[i] <- teste [[c(i,2)]]
  mediana[i] <- teste [[c(i,3)]]
  media[i] <- teste [[c(i,4)]]
  terc_quart[i] <- teste [[c(i,5)]]
  lim_sup [i] <-  teste [[c(i,5)]] + 1.5* (teste [[c(i,5)]] - teste [[c(i,2)]])
  maximos[i] <- teste [[c(i,6)]]
  }

teste5a <- data.frame(Num, ano_fim, minimo,lim_inf, pri_quart, mediana, media, terc_quart, lim_sup, maximos)
write.csv2(teste5a, file = "C:/dados/dissertacao/teste5a.csv")

tabela_pa_pib_pop_3 = tabela_pa_pib_pop_2 %>% 
  mutate(lim_sup_pib =  ifelse(ano < 2008, 9999999999999, 0)
                       +ifelse(ano == 2008, lim_sup [7], 0)
                       +ifelse(ano == 2009, lim_sup [8], 0)
                       +ifelse(ano == 2010, lim_sup [9], 0)
                       +ifelse(ano == 2011, lim_sup [10], 0)
                       +ifelse(ano == 2012, lim_sup [11], 0)
                       +ifelse(ano == 2013, lim_sup [12], 0)
                       +ifelse(ano == 2014, lim_sup [13], 0)
                       +ifelse(ano == 2015, lim_sup [14], 0)
                       +ifelse(ano == 2016, lim_sup [15], 0)
                       +ifelse(ano == 2017, lim_sup [16], 0)
                       +ifelse(ano == 2018, lim_sup [17], 0),
         ind_5_pa_pib = ifelse(var5_pib_def > lim_sup_pib, 1, 0),
         ind_5_pa_pib_ano = ifelse(var5_pib_def > lim_sup_pib, ano, 0)
         )

write.csv2(tabela_pa_pib_pop_3, file = "C:/dados/dissertacao/tabela_pa_pib_pop_3.csv")

################################################
# Público-Alvo Final
################################################
cod_munic_alvo = tabela_pa_pib_pop_3 %>% filter(ano >= 2008) %>% 
                    group_by (cod_munic) %>% 
                    summarise(ind_pa_final = max(ind_5_pa_pib), 
                              sum_ind_pa = sum(ind_5_pa_pib), 
                              ano_min = min(ifelse(ind_5_pa_pib_ano == 0,9999,ind_5_pa_pib_ano)),
                              ind_2008 = max(ifelse(ind_5_pa_pib_ano == 2008,1,0)),
                              ind_2009 = max(ifelse(ind_5_pa_pib_ano == 2009,1,0)),
                              ind_2010 = max(ifelse(ind_5_pa_pib_ano == 2010,1,0)),
                              ind_2011 = max(ifelse(ind_5_pa_pib_ano == 2011,1,0)),
                              ind_2012 = max(ifelse(ind_5_pa_pib_ano == 2012,1,0)),
                              ind_2013 = max(ifelse(ind_5_pa_pib_ano == 2013,1,0)),
                              ind_2014 = max(ifelse(ind_5_pa_pib_ano == 2014,1,0)),
                              ind_2015 = max(ifelse(ind_5_pa_pib_ano == 2015,1,0)),
                              ind_2016 = max(ifelse(ind_5_pa_pib_ano == 2016,1,0)),
                              ind_2017 = max(ifelse(ind_5_pa_pib_ano == 2017,1,0)),
                              ind_2018 = max(ifelse(ind_5_pa_pib_ano == 2018,1,0))
                              )



