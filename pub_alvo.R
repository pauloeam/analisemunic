

library(tidyverse)
library(readr)
library(dplyr)
library(readxl)
library(data.table)
library(purrr)
library(gridExtra)


# Importando População 2010 #
dados_pop_2010 = read.csv2('C:/dados/dissertacao/tabela608.csv', skip = 4) %>% mutate(ano = 2010) %>% rename(cod_munic = 'Cód.', munic = 'Município', pop = 'Total') %>% select(ano, cod_munic, munic, pop)
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
                    dados_pop_2016, dados_pop_2017) 
  #OBS: A tabela 2010 está sendo colocada como base pois ela é o censo.

  

# Importando PIB 2002-2018 #
  dados_pib_2002 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2002) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2002') %>% select(ano, cod_munic, munic, pib)
  dados_pib_2003 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2003) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2003') %>% select(ano, cod_munic, munic, pib)
  dados_pib_2004 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2004) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2004') %>% select(ano, cod_munic, munic, pib)
  dados_pib_2005 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2005) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2005') %>% select(ano, cod_munic, munic, pib)
  dados_pib_2006 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2006) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2006') %>% select(ano, cod_munic, munic, pib)
  dados_pib_2007 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2007) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2007') %>% select(ano, cod_munic, munic, pib)
  dados_pib_2008 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2008) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2008') %>% select(ano, cod_munic, munic, pib)
  dados_pib_2009 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2009) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2009') %>% select(ano, cod_munic, munic, pib)
  dados_pib_2010 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2010) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2010') %>% select(ano, cod_munic, munic, pib)
  dados_pib_2011 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2011) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2011') %>% select(ano, cod_munic, munic, pib)
  dados_pib_2012 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2012) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2012') %>% select(ano, cod_munic, munic, pib)
  dados_pib_2013 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2013) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2013') %>% select(ano, cod_munic, munic, pib)
  dados_pib_2014 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2014) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2014') %>% select(ano, cod_munic, munic, pib)
  dados_pib_2015 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2015) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2015') %>% select(ano, cod_munic, munic, pib)
  dados_pib_2016 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2016) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2016') %>% select(ano, cod_munic, munic, pib)
  dados_pib_2017 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2017) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2017') %>% select(ano, cod_munic, munic, pib)
  dados_pib_2018 = read.csv2('C:/dados/dissertacao/tabela5938.csv') %>% mutate (ano = 2018) %>% rename(cod_munic = 'ï..cod', munic = 'mun', pib = 'X2018') %>% select(ano, cod_munic, munic, pib)
  tabela_pib = rbind(dados_pib_2002, dados_pib_2003, dados_pib_2004, dados_pib_2005, dados_pib_2006, dados_pib_2007, 
                   dados_pib_2008, dados_pib_2009, dados_pib_2010, dados_pib_2011, dados_pib_2012, dados_pib_2013, 
                   dados_pib_2014, dados_pib_2015, dados_pib_2016, dados_pib_2017, dados_pib_2018)

#Deflator
dados_deflator = read.csv('C:/dados/dissertacao/deflator.csv', sep = ";") %>% rename ('ano' =  'ï..ano')

#Capturando a totalidade dos municípios
  tabela_pub_alvo_temp = distinct(rbind(select(tabela_pib, cod_munic, munic), select(tabela_pop, cod_munic, munic)))
  str(tabela_pub_alvo_temp)
  str(distinct(select(tabela_pub_alvo_temp, cod_munic)))
  tabela_pub_alvo_2002 = tabela_pub_alvo_temp %>% mutate (ano = 2002)
  tabela_pub_alvo_2003 = tabela_pub_alvo_temp %>% mutate (ano = 2003)
  tabela_pub_alvo_2004 = tabela_pub_alvo_temp %>% mutate (ano = 2004)
  tabela_pub_alvo_2005 = tabela_pub_alvo_temp %>% mutate (ano = 2005)
  tabela_pub_alvo_2006 = tabela_pub_alvo_temp %>% mutate (ano = 2006)
  tabela_pub_alvo_2007 = tabela_pub_alvo_temp %>% mutate (ano = 2007)
  tabela_pub_alvo_2008 = tabela_pub_alvo_temp %>% mutate (ano = 2008)
  tabela_pub_alvo_2009 = tabela_pub_alvo_temp %>% mutate (ano = 2009)
  tabela_pub_alvo_2010 = tabela_pub_alvo_temp %>% mutate (ano = 2010)
  tabela_pub_alvo_2011 = tabela_pub_alvo_temp %>% mutate (ano = 2011)
  tabela_pub_alvo_2012 = tabela_pub_alvo_temp %>% mutate (ano = 2012)
  tabela_pub_alvo_2013 = tabela_pub_alvo_temp %>% mutate (ano = 2013)
  tabela_pub_alvo_2014 = tabela_pub_alvo_temp %>% mutate (ano = 2014)
  tabela_pub_alvo_2015 = tabela_pub_alvo_temp %>% mutate (ano = 2015)
  tabela_pub_alvo_2016 = tabela_pub_alvo_temp %>% mutate (ano = 2016)
  tabela_pub_alvo_2017 = tabela_pub_alvo_temp %>% mutate (ano = 2017)
  tabela_pub_alvo_2018 = tabela_pub_alvo_temp %>% mutate (ano = 2018)
  tabela_pub_alvo = rbind(tabela_pub_alvo_2002, tabela_pub_alvo_2003, tabela_pub_alvo_2004, tabela_pub_alvo_2005, 
                          tabela_pub_alvo_2006, tabela_pub_alvo_2007, tabela_pub_alvo_2008, tabela_pub_alvo_2009, 
                          tabela_pub_alvo_2010, tabela_pub_alvo_2011, tabela_pub_alvo_2012, tabela_pub_alvo_2013, 
                          tabela_pub_alvo_2014, tabela_pub_alvo_2015, tabela_pub_alvo_2016, tabela_pub_alvo_2017, 
                          tabela_pub_alvo_2018) %>%
                    select (ano, cod_munic, munic)


#Verificações
str(tabela_pub_alvo)
str(tabela_pib)
str(tabela_pop)

write.csv2(tabela_pib, file = "C:/dados/dissertacao/tabela_pib.csv")
write.csv2(tabela_pop, file = "C:/dados/dissertacao/tabela_pop.csv")


#Incorporando as variáveis de PIB e População
tabela_pa_pib_pop_1 = left_join (tabela_pub_alvo, tabela_pib, by = c('ano', 'cod_munic', 'munic')) %>%
                    left_join (tabela_pop, by = c('ano', 'cod_munic', 'munic')) %>%
                    left_join (dados_pop_2010_fix, by = c('cod_munic')) %>%
                    left_join(dados_deflator, by = c('ano')) %>%
                    mutate(pib_def = pib/aplic, pib_def_pc = pib_def / pop) 
str(tabela_pa_pib_pop_1)

#Verificações
str(tabela_pa_pib_pop_1)
filter(tabela_pa_pib_pop_1, is.na(pib))
filter(tabela_pa_pib_pop_1, is.na(pop))

#Calculando Porte, Variações no PIB de 5, 10 e 15 anos  
tabela_pa_pib_pop_2 = tabela_pa_pib_pop_1 %>%
  select(ano, cod_munic, munic, pop, pop_2010, pib, pib_def, pib_def_pc) %>%
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
                                             4314548, 5003900, 5006275, 5104526, 5104542),1,0),
    
         lag_pib = lag(pib),
         lag_pib_def_pc = lag(pib_def_pc),
         var_pib = (pib - lag_pib)/lag_pib, 
         var_pib_def_pc = (pib_def_pc - lag_pib_def_pc)/lag_pib_def_pc,
         
         lag5_pib = lag(pib, n = 5),
         lag5_pib_def_pc = lag(pib_def_pc, n = 5),
         var5_pib = (pib - lag5_pib)/lag5_pib, 
         var5_pib_def_pc = (pib_def_pc - lag5_pib_def_pc)/lag5_pib_def_pc,
         
         lag10_pib = lag(pib, n = 10),
         lag10_pib_def_pc = lag(pib_def_pc, n = 10),
         var10_pib = (pib - lag10_pib)/lag10_pib, 
         var10_pib_def_pc = (pib_def_pc - lag10_pib_def_pc)/lag10_pib_def_pc,
         
         lag15_pib = lag(pib, n = 15),
         lag15_pib_def_pc = lag(pib_def_pc, n = 15),
         var15_pib = (pib - lag15_pib)/lag15_pib, 
         var15_pib_def_pc = (pib_def_pc - lag15_pib_def_pc)/lag15_pib_def_pc,
  )

write.csv2(tabela_pa_pib_pop_2, file = "C:/dados/dissertacao/tabela_pa_pib_pop_2.csv")




##############################################
#Teste 1 - Estatísticas Básicas do PIB
##############################################

teste <- tapply(tabela_pa_pib_pop_2$pib, tabela_pa_pib_pop_2$ano, summary)
teste

minimo <- numeric(0)
pri_quart <- numeric(0)
mediana <- numeric(0)
media <- numeric(0)
terc_quart <- numeric(0)
maximos <- numeric(0)
Nas <- numeric(0)

for(i in 1:16){
  minimo[i] <- teste [[c(i,1)]]
  pri_quart[i] <- teste [[c(i,2)]]
  mediana[i] <- teste [[c(i,3)]]
  media[i] <- teste [[c(i,4)]]
  terc_quart[i] <- teste [[c(i,5)]]
  maximos[i] <- teste [[c(i,6)]]
}

teste1 <- data.frame(minimo, pri_quart, mediana, media, terc_quart, maximos)
write.csv2(teste1, file = "C:/dados/dissertacao/teste1.csv")




##############################################
#Teste 2 - Estatísticas Básicas do pib_def_pc
##############################################
teste <- tapply(tabela_pa_pib_pop_2$pib_def_pc, tabela_pa_pib_pop_2$ano, summary)
teste

minimo <- numeric(0)
pri_quart <- numeric(0)
mediana <- numeric(0)
media <- numeric(0)
terc_quart <- numeric(0)
maximos <- numeric(0)
Nas <- numeric(0)

for(i in 1:16){
  minimo[i] <- teste [[c(i,1)]]
  pri_quart[i] <- teste [[c(i,2)]]
  mediana[i] <- teste [[c(i,3)]]
  media[i] <- teste [[c(i,4)]]
  terc_quart[i] <- teste [[c(i,5)]]
  maximos[i] <- teste [[c(i,6)]]
}

teste2 <- data.frame(minimo, pri_quart, mediana, media, terc_quart, maximos)
write.csv2(teste2, file = "C:/dados/dissertacao/teste2.csv")



##############################################
#Teste 3 - Estudo das Variações - 15 anos
##############################################
teste3 = tabela_pa_pib_pop_2 %>% filter(ano == 2017)
  plot(teste3$var_pib_def_pc)
  plot(teste3$var5_pib_def_pc)
  plot(teste3$var15_pib_def_pc)

  valor <- summary(teste3$var15_pib_def_pc)
  valor
  var1 = valor[2]
  var3 = valor[5]
  
  valor2 <- summary(teste3$var15_pib)
  valor2
  var21 = valor2[2]
  var23 = valor2[5]

teste3 = teste3 %>% 
                mutate(ind_pub_alvo_pc = ifelse(var15_pib_def_pc > (var3 - var1) + var3, 1, 0),
                       ind_pub_alvo = ifelse(var15_pib_def_pc > (var23 - var21) + var23, 1, 0)
                       )
  valor
  valor2

tapply(teste3$pib, teste3$porte, summary)
teste_3f <- table(teste3$porte, teste3$ind_pub_alvo)
teste_3f
prop.table (teste_3f, 1)



##############################################
#Teste 4 - Estudo das Variações - 10 anos
##############################################

# Variação pib_def_pc
teste <- tapply(tabela_pa_pib_pop_2$var10_pib_def_pc, tabela_pa_pib_pop_2$ano, summary)
teste

minimo <- numeric(0)
pri_quart <- numeric(0)
mediana <- numeric(0)
media <- numeric(0)
terc_quart <- numeric(0)
maximos <- numeric(0)
Nas <- numeric(0)

for(i in 1:16){
  minimo[i] <- teste [[c(i,1)]]
  pri_quart[i] <- teste [[c(i,2)]]
  mediana[i] <- teste [[c(i,3)]]
  media[i] <- teste [[c(i,4)]]
  terc_quart[i] <- teste [[c(i,5)]]
  maximos[i] <- teste [[c(i,6)]]
}

teste4a <- data.frame(minimo, pri_quart, mediana, media, terc_quart, maximos)
write.csv2(teste4a, file = "C:/dados/dissertacao/teste4a.csv")

# Varação PIB

teste <- tapply(tabela_pa_pib_pop_2$var10_pib, tabela_pa_pib_pop_2$ano, summary)
teste

minimo <- numeric(0)
pri_quart <- numeric(0)
mediana <- numeric(0)
media <- numeric(0)
terc_quart <- numeric(0)
maximos <- numeric(0)
Nas <- numeric(0)

for(i in 1:16){
  minimo[i] <- teste [[c(i,1)]]
  pri_quart[i] <- teste [[c(i,2)]]
  mediana[i] <- teste [[c(i,3)]]
  media[i] <- teste [[c(i,4)]]
  terc_quart[i] <- teste [[c(i,5)]]
  maximos[i] <- teste [[c(i,6)]]
}

teste4b <- data.frame(minimo, pri_quart, mediana, media, terc_quart, maximos)
write.csv2(teste4b, file = "C:/dados/dissertacao/teste4b.csv")



##############################################
#Teste 5 - Estudo das Variações - 5 anos
##############################################

# Variação pib_def_pc
teste <- tapply(tabela_pa_pib_pop_2$var5_pib_def_pc, tabela_pa_pib_pop_2$ano, summary)
teste

minimo <- numeric(0)
pri_quart <- numeric(0)
mediana <- numeric(0)
media <- numeric(0)
terc_quart <- numeric(0)
maximos <- numeric(0)
Nas <- numeric(0)

for(i in 1:16){
  minimo[i] <- teste [[c(i,1)]]
  pri_quart[i] <- teste [[c(i,2)]]
  mediana[i] <- teste [[c(i,3)]]
  media[i] <- teste [[c(i,4)]]
  terc_quart[i] <- teste [[c(i,5)]]
  maximos[i] <- teste [[c(i,6)]]
}

teste5a <- data.frame(minimo, pri_quart, mediana, media, terc_quart, maximos)
write.csv2(teste5a, file = "C:/dados/dissertacao/teste5a.csv")

# Varação PIB

teste <- tapply(tabela_pa_pib_pop_2$var5_pib, tabela_pa_pib_pop_2$ano, summary)
teste

minimo <- numeric(0)

pri_quart <- numeric(0)
mediana <- numeric(0)
media <- numeric(0)
terc_quart <- numeric(0)
maximos <- numeric(0)
Nas <- numeric(0)

for(i in 1:16){
  minimo[i] <- teste [[c(i,1)]]
  lim_inf [i] <-  teste [[c(i,2)]] - 1.5* (teste [[c(i,5)]] - teste [[c(i,2)]])
  pri_quart[i] <- teste [[c(i,2)]]
  mediana[i] <- teste [[c(i,3)]]
  media[i] <- teste [[c(i,4)]]
  terc_quart[i] <- teste [[c(i,5)]]
  lim_sup [i] <-  teste [[c(i,5)]] + 1.5* (teste [[c(i,5)]] - teste [[c(i,2)]])
  maximos[i] <- teste [[c(i,6)]]
}

teste5b <- data.frame(minimo, pri_quart, mediana, media, terc_quart, maximos)
write.csv2(teste5b, file = "C:/dados/dissertacao/teste5b.csv")


#######################################################################################
#Teste 6 - Estimando o Público Alvo por Porte, por apenas dois grupamentos e por pib_def_pc
#######################################################################################
tabela = filter(tabela_pa_pib_pop_2, ano == 2017)

minimo <- numeric(0)
lim_inf <- numeric(0)
pri_quart <- numeric(0)
mediana <- numeric(0)
media <- numeric(0)
terc_quart <- numeric(0)
lim_sup <- numeric(0)
maximos <- numeric(0)
Nas <- numeric(0)

teste <- tapply(tabela$var15_pib_def_pc, tabela$porte, summary)
teste

for(i in 1:7){
  minimo[i] <- teste [[c(i,1)]]
  lim_inf [i] <-  teste [[c(i,2)]] - 1.5* (teste [[c(i,5)]] - teste [[c(i,2)]])
  pri_quart[i] <- teste [[c(i,2)]]
  mediana[i] <- teste [[c(i,3)]]
  media[i] <- teste [[c(i,4)]]
  terc_quart[i] <- teste [[c(i,5)]]
  lim_sup [i] <-  teste [[c(i,5)]] + 1.5* (teste [[c(i,5)]] - teste [[c(i,2)]])
  maximos[i] <- teste [[c(i,6)]]
}

teste <- summary(tabela$var15_pib_def_pc)
teste

  minimo[8] <- teste[1]
  lim_inf [8] <-  teste[2] - 1.5* (teste[5] - teste[2])
  pri_quart[8] <- teste[2]
  mediana[8] <- teste[3]
  media[8] <- teste[4]
  terc_quart[8] <- teste[5]
  lim_sup [8] <-  teste[5] + 1.5* (teste[5] - teste[2])
  maximos[8] <- teste[6]

teste <- tapply(tabela$var15_pib_def_pc, tabela$grp_porte, summary)
teste

for(i in 1:2){
  j = i + 8
  minimo[j] <- teste [[c(i,1)]]
  lim_inf [j] <-  teste [[c(i,2)]] - 1.5* (teste [[c(i,5)]] - teste [[c(i,2)]])
  pri_quart[j] <- teste [[c(i,2)]]
  mediana[j] <- teste [[c(i,3)]]
  media[j] <- teste [[c(i,4)]]
  terc_quart[j] <- teste [[c(i,5)]]
  lim_sup [j] <-  teste [[c(i,5)]] + 1.5* (teste [[c(i,5)]] - teste [[c(i,2)]])
  maximos[j] <- teste [[c(i,6)]]
}

teste6 <- data.frame(minimo, lim_inf, pri_quart, mediana, media, terc_quart, lim_sup, maximos)
write.csv2(teste6, file = "C:/dados/dissertacao/teste6.csv")

tabela_pa_pib_pop_3 = tabela_pa_pib_pop_2 %>% 
  mutate(ind_pa_pibpc_geral = ifelse(var15_pib_def_pc > lim_sup [8], 1, 0),
         ind_pa_pibpc_porte = ifelse(porte == 1, ifelse(var15_pib_def_pc > lim_sup[1],1,0), 0)
                               + ifelse(porte == 2, ifelse(var15_pib_def_pc > lim_sup[2],1,0), 0)
                               + ifelse(porte == 3, ifelse(var15_pib_def_pc > lim_sup[3],1,0), 0)
                               + ifelse(porte == 4, ifelse(var15_pib_def_pc > lim_sup[4],1,0), 0)
                               + ifelse(porte == 5, ifelse(var15_pib_def_pc > lim_sup[5],1,0), 0)
                               + ifelse(porte == 6, ifelse(var15_pib_def_pc > lim_sup[6],1,0), 0)
                               + ifelse(porte == 7, ifelse(var15_pib_def_pc > lim_sup[7],1,0), 0),
         ind_pa_pibpc_grp = ifelse(grp_porte == 1, ifelse(var15_pib_def_pc > lim_sup[9],1,0), 0) 
                               + ifelse(grp_porte == 2, ifelse(var15_pib_def_pc > lim_sup[10],1,0), 0)
         )


#######################################################################################
#Teste y - Estimando o Público Alvo por Porte, por apenas dois grupamentos e por PIB
#######################################################################################
tabela = filter(tabela_pa_pib_pop_2, ano == 2017)

minimo <- numeric(0)
lim_inf <- numeric(0)
pri_quart <- numeric(0)
mediana <- numeric(0)
media <- numeric(0)
terc_quart <- numeric(0)
lim_sup <- numeric(0)
maximos <- numeric(0)
Nas <- numeric(0)

teste <- tapply(tabela$var15_pib, tabela$porte, summary)
teste

for(i in 1:7){
  minimo[i] <- teste [[c(i,1)]]
  lim_inf [i] <-  teste [[c(i,2)]] - 1.5* (teste [[c(i,5)]] - teste [[c(i,2)]])
  pri_quart[i] <- teste [[c(i,2)]]
  mediana[i] <- teste [[c(i,3)]]
  media[i] <- teste [[c(i,4)]]
  terc_quart[i] <- teste [[c(i,5)]]
  lim_sup [i] <-  teste [[c(i,5)]] + 1.5* (teste [[c(i,5)]] - teste [[c(i,2)]])
  maximos[i] <- teste [[c(i,6)]]
}

teste <- summary(tabela$var15_pib)
teste

minimo[8] <- teste[1]
lim_inf [8] <-  teste[2] - 1.5* (teste[5] - teste[2])
pri_quart[8] <- teste[2]
mediana[8] <- teste[3]
media[8] <- teste[4]
terc_quart[8] <- teste[5]
lim_sup [8] <-  teste[5] + 1.5* (teste[5] - teste[2])
maximos[8] <- teste[6]

teste <- tapply(tabela$var15_pib, tabela$grp_porte, summary)
teste

for(i in 1:2){
  j = i + 8
  minimo[j] <- teste [[c(i,1)]]
  lim_inf [j] <-  teste [[c(i,2)]] - 1.5* (teste [[c(i,5)]] - teste [[c(i,2)]])
  pri_quart[j] <- teste [[c(i,2)]]
  mediana[j] <- teste [[c(i,3)]]
  media[j] <- teste [[c(i,4)]]
  terc_quart[j] <- teste [[c(i,5)]]
  lim_sup [j] <-  teste [[c(i,5)]] + 1.5* (teste [[c(i,5)]] - teste [[c(i,2)]])
  maximos[j] <- teste [[c(i,6)]]
}

teste7 <- data.frame(minimo, lim_inf, pri_quart, mediana, media, terc_quart, lim_sup, maximos)
write.csv2(teste7, file = "C:/dados/dissertacao/teste7.csv")

tabela_pa_pib_pop_4 = tabela_pa_pib_pop_3 %>% 
  mutate(ind_pa_pib_geral = ifelse(var15_pib > lim_sup [8], 1, 0),
         ind_pa_pib_porte = ifelse(porte == 1, ifelse(var15_pib > lim_sup[1],1,0), 0)
         + ifelse(porte == 2, ifelse(var15_pib > lim_sup[2],1,0), 0)
         + ifelse(porte == 3, ifelse(var15_pib > lim_sup[3],1,0), 0)
         + ifelse(porte == 4, ifelse(var15_pib > lim_sup[4],1,0), 0)
         + ifelse(porte == 5, ifelse(var15_pib > lim_sup[5],1,0), 0)
         + ifelse(porte == 6, ifelse(var15_pib > lim_sup[6],1,0), 0)
         + ifelse(porte == 7, ifelse(var15_pib > lim_sup[7],1,0), 0),
         ind_pa_pib_grp = ifelse(grp_porte == 1, ifelse(var15_pib > lim_sup[9],1,0), 0) 
         + ifelse(grp_porte == 2, ifelse(var15_pib > lim_sup[10],1,0), 0)
  )

write.csv2(tabela_pa_pib_pop_4, file = "C:/dados/dissertacao/tabela_pa_pib_pop_4.csv")


# Calculando as Proporções
tapply(filtro_03$pib, filtro_03$porte, summary)
teste_2 <- table(filtro_03$porte, filtro_03$ind_pub_alvo_2)
teste_2
prop.table (teste_2, 1)














#Com base nas distribuições realizadas, os municípios com os menores portes, por possuirem menores PIBs, poderão ser 
#mais influenciados por qualquer variação desse PIB.
#Refinar o Público Alvo capturando ao menos um Município de cada Porte
# Método 2: Filtro por Porte (agrupando: porte 1 até 3 e agrupando 5 até 7)

valor <- tapply(filtro_02$var15_pib_def_pc, filtro_02$porte_2, summary)
var11 = valor[[c(1,2)]]
var31 = valor[[c(1,5)]]
var12 = valor[[c(2,2)]]
var32 = valor[[c(2,5)]]

#checando as Variáveis
var11
var31
var12
var32

#Criando o Indicador do Público Alvo 2
filtro_03 = filtro_02 %>% 
  mutate(ind_pub_alvo_2 = ifelse(porte_2 == 1,
                                 ifelse(var15_pib_def_pc > (var31 - var11) + var31, 1, 0),
                                 ifelse(var15_pib_def_pc > (var32 - var12) + var32, 1, 0))) 


tapply(filtro_03$pib, filtro_03$porte, summary)
teste_2 <- table(filtro_03$porte, filtro_03$ind_pub_alvo_2)
teste_2
prop.table (teste_2, 1)
