
library(tidyverse)
library(readr)
library(dplyr)
library(readxl)
library(data.table)
library(purrr)

options(scipen = 999)

#rais_1985 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB1985.txt'))
#rais_1985 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB1985.txt'))
#rais_1986 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB1986.txt'))
#rais_1987 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB1987.txt'))
#rais_1988 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB1988.txt'))
#rais_1989 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB1989.txt'))
#rais_1990 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB1990.txt'))
#rais_1991 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB1991.txt'))
#rais_1992 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB1992.txt'))
#rais_1993 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB1993.txt'))
#rais_1994 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB1994.txt'))
#rais_1995 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB1995.txt'))
#rais_1996 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB1996.txt'))
#rais_1997 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB1997.txt'))
#rais_1998 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB1998.txt'))
#rais_1999 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB1999.txt'))
#rais_2000 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2000.txt'))
#rais_2001 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2001.txt'))
dados_rais_2002 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2002.txt'))
dados_rais_2003 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2003.txt'))
dados_rais_2004 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2004.txt'))
dados_rais_2005 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2005.txt'))
dados_rais_2006 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2006.txt'))
dados_rais_2007 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2007.txt'))
dados_rais_2008 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2008.txt'))
dados_rais_2009 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2009.txt'))
dados_rais_2010 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2010.txt'))
dados_rais_2011 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2011.txt'))
dados_rais_2012 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2012.txt'))
dados_rais_2013 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2013.txt'))
dados_rais_2014 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2014.txt'))
dados_rais_2015 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2015.txt'))
dados_rais_2016 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2016.txt'))
dados_rais_2017 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2017.txt'))
dados_rais_2018 = as.data.frame(fread('C:/dados/financaspublicas/rais/ESTB2018.txt'))


colnames(dados_rais_2002)[1] <- 'bairro_SP'
colnames(dados_rais_2002)[2] <- 'bairro_fz'
colnames(dados_rais_2002)[3] <- 'bairro_rj'
colnames(dados_rais_2002)[4] <- 'cnae_95'
colnames(dados_rais_2002)[5] <- 'distritos_sp'
colnames(dados_rais_2002)[6] <- 'qtd_vinc_clt'
colnames(dados_rais_2002)[7] <- 'qtd_vinc_atv'
colnames(dados_rais_2002)[8] <- 'qtd_vinc_est'
colnames(dados_rais_2002)[9] <- 'ind_cei'
colnames(dados_rais_2002)[10] <- 'ind_est_pat'
colnames(dados_rais_2002)[11] <- 'ind_rais_neg'
colnames(dados_rais_2002)[12] <- 'ind_simp'
colnames(dados_rais_2002)[13] <- 'munic'
colnames(dados_rais_2002)[14] <- 'nat_jur'
colnames(dados_rais_2002)[15] <- 'reg_adm_df'
colnames(dados_rais_2002)[16] <- 'tam_est'
colnames(dados_rais_2002)[17] <- 'tip_est'
colnames(dados_rais_2002)[18] <- 'tip_est_2'

colnames(dados_rais_2003)[1] <- 'bairro_sp'
colnames(dados_rais_2003)[2] <- 'bairro_fz'
colnames(dados_rais_2003)[3] <- 'bairro_rj'
colnames(dados_rais_2003)[4] <- 'cnae_95'
colnames(dados_rais_2003)[5] <- 'distritos_sp'
colnames(dados_rais_2003)[6] <- 'qtd_vinc_clt'
colnames(dados_rais_2003)[7] <- 'qtd_vinc_atv'
colnames(dados_rais_2003)[8] <- 'qtd_vinc_est'
colnames(dados_rais_2003)[9] <- 'ind_cei'
colnames(dados_rais_2003)[10] <- 'ind_est_pat'
colnames(dados_rais_2003)[11] <- 'ind_rais_neg'
colnames(dados_rais_2003)[12] <- 'ind_simp'
colnames(dados_rais_2003)[13] <- 'munic'
colnames(dados_rais_2003)[14] <- 'nat_jur'
colnames(dados_rais_2003)[15] <- 'reg_adm_df'
colnames(dados_rais_2003)[16] <- 'tam_est'
colnames(dados_rais_2003)[17] <- 'tip_est'
colnames(dados_rais_2003)[18] <- 'tip_est_2'

colnames(dados_rais_2004)[1] <- 'bairro_sp'
colnames(dados_rais_2004)[2] <- 'bairro_fz'
colnames(dados_rais_2004)[3] <- 'bairro_rj'
colnames(dados_rais_2004)[4] <- 'cnae_95'
colnames(dados_rais_2004)[5] <- 'distritos_sp'
colnames(dados_rais_2004)[6] <- 'qtd_vinc_clt'
colnames(dados_rais_2004)[7] <- 'qtd_vinc_atv'
colnames(dados_rais_2004)[8] <- 'qtd_vinc_est'
colnames(dados_rais_2004)[9] <- 'ind_cei'
colnames(dados_rais_2004)[10] <- 'ind_est_pat'
colnames(dados_rais_2004)[11] <- 'ind_rais_neg'
colnames(dados_rais_2004)[12] <- 'ind_simp'
colnames(dados_rais_2004)[13] <- 'munic'
colnames(dados_rais_2004)[14] <- 'nat_jur'
colnames(dados_rais_2004)[15] <- 'reg_adm_df'
colnames(dados_rais_2004)[16] <- 'tam_est'
colnames(dados_rais_2004)[17] <- 'tip_est'
colnames(dados_rais_2004)[18] <- 'tip_est_2'

colnames(dados_rais_2005)[1] <- 'bairro_sp'
colnames(dados_rais_2005)[2] <- 'bairro_fz'
colnames(dados_rais_2005)[3] <- 'bairro_rj'
colnames(dados_rais_2005)[4] <- 'cnae_95'
colnames(dados_rais_2005)[5] <- 'distritos_sp'
colnames(dados_rais_2005)[6] <- 'qtd_vinc_clt'
colnames(dados_rais_2005)[7] <- 'qtd_vinc_atv'
colnames(dados_rais_2005)[8] <- 'qtd_vinc_est'
colnames(dados_rais_2005)[9] <- 'ind_cei'
colnames(dados_rais_2005)[10] <- 'ind_atv_ano'
colnames(dados_rais_2005)[11] <- 'ind_est_pat'
colnames(dados_rais_2005)[12] <- 'ind_rais_neg'
colnames(dados_rais_2005)[13] <- 'ind_simp'
colnames(dados_rais_2005)[14] <- 'munic'
colnames(dados_rais_2005)[15] <- 'nat_jur'
colnames(dados_rais_2005)[16] <- 'reg_adm_df'
colnames(dados_rais_2005)[17] <- 'tam_est'
colnames(dados_rais_2005)[18] <- 'tip_est'
colnames(dados_rais_2005)[19] <- 'tip_est_2'

colnames(dados_rais_2006)[1] <- 'bairro_sp'
colnames(dados_rais_2006)[2] <- 'bairro_fz'
colnames(dados_rais_2006)[3] <- 'bairro_rj'
colnames(dados_rais_2006)[4] <- 'cnae_20'
colnames(dados_rais_2006)[5] <- 'cnae_95'
colnames(dados_rais_2006)[6] <- 'distritos_sp'
colnames(dados_rais_2006)[7] <- 'qtd_vinc_clt'
colnames(dados_rais_2006)[8] <- 'qtd_vinc_atv'
colnames(dados_rais_2006)[9] <- 'qtd_vinc_est'
colnames(dados_rais_2006)[10] <- 'ind_cei'
colnames(dados_rais_2006)[11] <- 'ind_atv_ano'
colnames(dados_rais_2006)[12] <- 'ind_est_pat'
colnames(dados_rais_2006)[13] <- 'ind_rais_neg'
colnames(dados_rais_2006)[14] <- 'ind_simp'
colnames(dados_rais_2006)[15] <- 'munic'
colnames(dados_rais_2006)[16] <- 'nat_jur'
colnames(dados_rais_2006)[17] <- 'reg_adm_df'
colnames(dados_rais_2006)[18] <- 'cnae_20_sub'
colnames(dados_rais_2006)[19] <- 'tam_est'
colnames(dados_rais_2006)[20] <- 'tip_est'
colnames(dados_rais_2006)[21] <- 'tip_est_2'

colnames(dados_rais_2007)[1] <- 'bairro_sp'
colnames(dados_rais_2007)[2] <- 'bairro_fz'
colnames(dados_rais_2007)[3] <- 'bairro_rj'
colnames(dados_rais_2007)[4] <- 'cnae_20'
colnames(dados_rais_2007)[5] <- 'cnae_95'
colnames(dados_rais_2007)[6] <- 'distritos_sp'
colnames(dados_rais_2007)[7] <- 'qtd_vinc_clt'
colnames(dados_rais_2007)[8] <- 'qtd_vinc_atv'
colnames(dados_rais_2007)[9] <- 'qtd_vinc_est'
colnames(dados_rais_2007)[10] <- 'ind_cei'
colnames(dados_rais_2007)[11] <- 'ind_atv_ano'
colnames(dados_rais_2007)[12] <- 'ind_est_pat'
colnames(dados_rais_2007)[13] <- 'ind_rais_neg'
colnames(dados_rais_2007)[14] <- 'ind_simp'
colnames(dados_rais_2007)[15] <- 'munic'
colnames(dados_rais_2007)[16] <- 'nat_jur'
colnames(dados_rais_2007)[17] <- 'reg_adm_df'
colnames(dados_rais_2007)[18] <- 'cnae_20_sub'
colnames(dados_rais_2007)[19] <- 'tam_est'
colnames(dados_rais_2007)[20] <- 'tip_est'
colnames(dados_rais_2007)[21] <- 'tip_est_2'

colnames(dados_rais_2008)[1] <- 'bairro_sp'
colnames(dados_rais_2008)[2] <- 'bairro_fz'
colnames(dados_rais_2008)[3] <- 'bairro_rj'
colnames(dados_rais_2008)[4] <- 'cnae_20'
colnames(dados_rais_2008)[5] <- 'cnae_95'
colnames(dados_rais_2008)[6] <- 'distritos_sp'
colnames(dados_rais_2008)[7] <- 'qtd_vinc_clt'
colnames(dados_rais_2008)[8] <- 'qtd_vinc_atv'
colnames(dados_rais_2008)[9] <- 'qtd_vinc_est'
colnames(dados_rais_2008)[10] <- 'ind_cei'
colnames(dados_rais_2008)[11] <- 'ind_atv_ano'
colnames(dados_rais_2008)[12] <- 'ind_est_pat'
colnames(dados_rais_2008)[13] <- 'ind_rais_neg'
colnames(dados_rais_2008)[14] <- 'ind_simp'
colnames(dados_rais_2008)[15] <- 'munic'
colnames(dados_rais_2008)[16] <- 'nat_jur'
colnames(dados_rais_2008)[17] <- 'reg_adm_df'
colnames(dados_rais_2008)[18] <- 'cnae_20_sub'
colnames(dados_rais_2008)[19] <- 'tam_est'
colnames(dados_rais_2008)[20] <- 'tip_est'
colnames(dados_rais_2008)[21] <- 'tip_est_2'

colnames(dados_rais_2009)[1] <- 'bairro_sp'
colnames(dados_rais_2009)[2] <- 'bairro_fz'
colnames(dados_rais_2009)[3] <- 'bairro_rj'
colnames(dados_rais_2009)[4] <- 'cnae_20'
colnames(dados_rais_2009)[5] <- 'cnae_95'
colnames(dados_rais_2009)[6] <- 'distritos_sp'
colnames(dados_rais_2009)[7] <- 'qtd_vinc_clt'
colnames(dados_rais_2009)[8] <- 'qtd_vinc_atv'
colnames(dados_rais_2009)[9] <- 'qtd_vinc_est'
colnames(dados_rais_2009)[10] <- 'ind_cei'
colnames(dados_rais_2009)[11] <- 'ind_atv_ano'
colnames(dados_rais_2009)[12] <- 'ind_est_pat'
colnames(dados_rais_2009)[13] <- 'ind_rais_neg'
colnames(dados_rais_2009)[14] <- 'ind_simp'
colnames(dados_rais_2009)[15] <- 'munic'
colnames(dados_rais_2009)[16] <- 'nat_jur'
colnames(dados_rais_2009)[17] <- 'reg_adm_df'
colnames(dados_rais_2009)[18] <- 'cnae_20_sub'
colnames(dados_rais_2009)[19] <- 'tam_est'
colnames(dados_rais_2009)[20] <- 'tip_est'
colnames(dados_rais_2009)[21] <- 'tip_est_2'

colnames(dados_rais_2010)[1] <- 'bairro_sp'
colnames(dados_rais_2010)[2] <- 'bairro_fz'
colnames(dados_rais_2010)[3] <- 'bairro_rj'
colnames(dados_rais_2010)[4] <- 'cnae_20'
colnames(dados_rais_2010)[5] <- 'cnae_95'
colnames(dados_rais_2010)[6] <- 'distritos_sp'
colnames(dados_rais_2010)[7] <- 'qtd_vinc_clt'
colnames(dados_rais_2010)[8] <- 'qtd_vinc_atv'
colnames(dados_rais_2010)[9] <- 'qtd_vinc_est'
colnames(dados_rais_2010)[10] <- 'ind_cei'
colnames(dados_rais_2010)[11] <- 'ind_atv_ano'
colnames(dados_rais_2010)[12] <- 'ind_est_pat'
colnames(dados_rais_2010)[13] <- 'ind_rais_neg'
colnames(dados_rais_2010)[14] <- 'ind_simp'
colnames(dados_rais_2010)[15] <- 'munic'
colnames(dados_rais_2010)[16] <- 'nat_jur'
colnames(dados_rais_2010)[17] <- 'reg_adm_df'
colnames(dados_rais_2010)[18] <- 'cnae_20_sub'
colnames(dados_rais_2010)[19] <- 'tam_est'
colnames(dados_rais_2010)[20] <- 'tip_est'
colnames(dados_rais_2010)[21] <- 'tip_est_2'

colnames(dados_rais_2011)[1] <- 'bairro_sp'
colnames(dados_rais_2011)[2] <- 'bairro_fz'
colnames(dados_rais_2011)[3] <- 'bairro_rj'
colnames(dados_rais_2011)[4] <- 'cnae_20'
colnames(dados_rais_2011)[5] <- 'cnae_95'
colnames(dados_rais_2011)[6] <- 'distritos_sp'
colnames(dados_rais_2011)[7] <- 'qtd_vinc_clt'
colnames(dados_rais_2011)[8] <- 'qtd_vinc_atv'
colnames(dados_rais_2011)[9] <- 'qtd_vinc_est'
colnames(dados_rais_2011)[10] <- 'ind_cei'
colnames(dados_rais_2011)[11] <- 'ind_atv_ano'
colnames(dados_rais_2011)[12] <- 'ind_est_pat'
colnames(dados_rais_2011)[13] <- 'ind_rais_neg'
colnames(dados_rais_2011)[14] <- 'ind_simp'
colnames(dados_rais_2011)[15] <- 'munic'
colnames(dados_rais_2011)[16] <- 'nat_jur'
colnames(dados_rais_2011)[17] <- 'reg_adm_df'
colnames(dados_rais_2011)[18] <- 'cnae_20_sub'
colnames(dados_rais_2011)[19] <- 'tam_est'
colnames(dados_rais_2011)[20] <- 'tip_est'
colnames(dados_rais_2011)[21] <- 'tip_est_2'

colnames(dados_rais_2012)[1] <- 'bairro_sp'
colnames(dados_rais_2012)[2] <- 'bairro_fz'
colnames(dados_rais_2012)[3] <- 'bairro_rj'
colnames(dados_rais_2012)[4] <- 'cnae_20'
colnames(dados_rais_2012)[5] <- 'cnae_95'
colnames(dados_rais_2012)[6] <- 'distritos_sp'
colnames(dados_rais_2012)[7] <- 'qtd_vinc_clt'
colnames(dados_rais_2012)[8] <- 'qtd_vinc_atv'
colnames(dados_rais_2012)[9] <- 'qtd_vinc_est'
colnames(dados_rais_2012)[10] <- 'ind_cei'
colnames(dados_rais_2012)[11] <- 'ind_atv_ano'
colnames(dados_rais_2012)[12] <- 'ind_est_pat'
colnames(dados_rais_2012)[13] <- 'ind_rais_neg'
colnames(dados_rais_2012)[14] <- 'ind_simp'
colnames(dados_rais_2012)[15] <- 'munic'
colnames(dados_rais_2012)[16] <- 'nat_jur'
colnames(dados_rais_2012)[17] <- 'reg_adm_df'
colnames(dados_rais_2012)[18] <- 'cnae_20_sub'
colnames(dados_rais_2012)[19] <- 'tam_est'
colnames(dados_rais_2012)[20] <- 'tip_est'
colnames(dados_rais_2012)[21] <- 'tip_est_2'

colnames(dados_rais_2013)[1] <- 'bairro_sp'
colnames(dados_rais_2013)[2] <- 'bairro_fz'
colnames(dados_rais_2013)[3] <- 'bairro_rj'
colnames(dados_rais_2013)[4] <- 'cnae_20'
colnames(dados_rais_2013)[5] <- 'cnae_95'
colnames(dados_rais_2013)[6] <- 'distritos_sp'
colnames(dados_rais_2013)[7] <- 'qtd_vinc_clt'
colnames(dados_rais_2013)[8] <- 'qtd_vinc_atv'
colnames(dados_rais_2013)[9] <- 'qtd_vinc_est'
colnames(dados_rais_2013)[10] <- 'ind_cei'
colnames(dados_rais_2013)[11] <- 'ind_atv_ano'
colnames(dados_rais_2013)[12] <- 'ind_est_pat'
colnames(dados_rais_2013)[13] <- 'ind_rais_neg'
colnames(dados_rais_2013)[14] <- 'ind_simp'
colnames(dados_rais_2013)[15] <- 'munic'
colnames(dados_rais_2013)[16] <- 'nat_jur'
colnames(dados_rais_2013)[17] <- 'reg_adm_df'
colnames(dados_rais_2013)[18] <- 'cnae_20_sub'
colnames(dados_rais_2013)[19] <- 'tam_est'
colnames(dados_rais_2013)[20] <- 'tip_est'
colnames(dados_rais_2013)[21] <- 'tip_est_2'
colnames(dados_rais_2013)[22] <- 'uf'

colnames(dados_rais_2014)[1] <- 'bairro_sp'
colnames(dados_rais_2014)[2] <- 'bairro_fz'
colnames(dados_rais_2014)[3] <- 'bairro_rj'
colnames(dados_rais_2014)[4] <- 'cnae_20'
colnames(dados_rais_2014)[5] <- 'cnae_95'
colnames(dados_rais_2014)[6] <- 'distritos_sp'
colnames(dados_rais_2014)[7] <- 'qtd_vinc_clt'
colnames(dados_rais_2014)[8] <- 'qtd_vinc_atv'
colnames(dados_rais_2014)[9] <- 'qtd_vinc_est'
colnames(dados_rais_2014)[10] <- 'ind_cei'
colnames(dados_rais_2014)[11] <- 'ind_atv_ano'
colnames(dados_rais_2014)[12] <- 'ind_est_pat'
colnames(dados_rais_2014)[13] <- 'ind_rais_neg'
colnames(dados_rais_2014)[14] <- 'ind_simp'
colnames(dados_rais_2014)[15] <- 'munic'
colnames(dados_rais_2014)[16] <- 'nat_jur'
colnames(dados_rais_2014)[17] <- 'reg_adm_df'
colnames(dados_rais_2014)[18] <- 'cnae_20_sub'
colnames(dados_rais_2014)[19] <- 'tam_est'
colnames(dados_rais_2014)[20] <- 'tip_est'
colnames(dados_rais_2014)[21] <- 'tip_est_2'
colnames(dados_rais_2014)[22] <- 'uf'
colnames(dados_rais_2014)[23] <- 'ibge_sub'
colnames(dados_rais_2014)[24] <- 'cep_estab'

colnames(dados_rais_2015)[1] <- 'bairro_sp'
colnames(dados_rais_2015)[2] <- 'bairro_fz'
colnames(dados_rais_2015)[3] <- 'bairro_rj'
colnames(dados_rais_2015)[4] <- 'cnae_20'
colnames(dados_rais_2015)[5] <- 'cnae_95'
colnames(dados_rais_2015)[6] <- 'distritos_sp'
colnames(dados_rais_2015)[7] <- 'qtd_vinc_clt'
colnames(dados_rais_2015)[8] <- 'qtd_vinc_atv'
colnames(dados_rais_2015)[9] <- 'qtd_vinc_est'
colnames(dados_rais_2015)[10] <- 'ind_cei'
colnames(dados_rais_2015)[11] <- 'ind_atv_ano'
colnames(dados_rais_2015)[12] <- 'ind_est_pat'
colnames(dados_rais_2015)[13] <- 'ind_rais_neg'
colnames(dados_rais_2015)[14] <- 'ind_simp'
colnames(dados_rais_2015)[15] <- 'munic'
colnames(dados_rais_2015)[16] <- 'nat_jur'
colnames(dados_rais_2015)[17] <- 'reg_adm_df'
colnames(dados_rais_2015)[18] <- 'cnae_20_sub'
colnames(dados_rais_2015)[19] <- 'tam_est'
colnames(dados_rais_2015)[20] <- 'tip_est'
colnames(dados_rais_2015)[21] <- 'tip_est_2'
colnames(dados_rais_2015)[22] <- 'uf'
colnames(dados_rais_2015)[23] <- 'ibge_sub'
colnames(dados_rais_2015)[24] <- 'cep_estab'

colnames(dados_rais_2016)[1] <- 'bairro_sp'
colnames(dados_rais_2016)[2] <- 'bairro_fz'
colnames(dados_rais_2016)[3] <- 'bairro_rj'
colnames(dados_rais_2016)[4] <- 'cnae_20'
colnames(dados_rais_2016)[5] <- 'cnae_95'
colnames(dados_rais_2016)[6] <- 'distritos_sp'
colnames(dados_rais_2016)[7] <- 'qtd_vinc_clt'
colnames(dados_rais_2016)[8] <- 'qtd_vinc_atv'
colnames(dados_rais_2016)[9] <- 'qtd_vinc_est'
colnames(dados_rais_2016)[10] <- 'ind_cei'
colnames(dados_rais_2016)[11] <- 'ind_atv_ano'
colnames(dados_rais_2016)[12] <- 'ind_est_pat'
colnames(dados_rais_2016)[13] <- 'ind_rais_neg'
colnames(dados_rais_2016)[14] <- 'ind_simp'
colnames(dados_rais_2016)[15] <- 'munic'
colnames(dados_rais_2016)[16] <- 'nat_jur'
colnames(dados_rais_2016)[17] <- 'reg_adm_df'
colnames(dados_rais_2016)[18] <- 'cnae_20_sub'
colnames(dados_rais_2016)[19] <- 'tam_est'
colnames(dados_rais_2016)[20] <- 'tip_est'
colnames(dados_rais_2016)[21] <- 'tip_est_2'
colnames(dados_rais_2016)[22] <- 'uf'
colnames(dados_rais_2016)[23] <- 'ibge_sub'
colnames(dados_rais_2016)[24] <- 'cep_estab'

colnames(dados_rais_2017)[1] <- 'bairro_sp'
colnames(dados_rais_2017)[2] <- 'bairro_fz'
colnames(dados_rais_2017)[3] <- 'bairro_rj'
colnames(dados_rais_2017)[4] <- 'cnae_20'
colnames(dados_rais_2017)[5] <- 'cnae_95'
colnames(dados_rais_2017)[6] <- 'distritos_sp'
colnames(dados_rais_2017)[7] <- 'qtd_vinc_clt'
colnames(dados_rais_2017)[8] <- 'qtd_vinc_atv'
colnames(dados_rais_2017)[9] <- 'qtd_vinc_est'
colnames(dados_rais_2017)[10] <- 'ind_cei'
colnames(dados_rais_2017)[11] <- 'ind_atv_ano'
colnames(dados_rais_2017)[12] <- 'ind_est_pat'
colnames(dados_rais_2017)[13] <- 'ind_rais_neg'
colnames(dados_rais_2017)[14] <- 'ind_simp'
colnames(dados_rais_2017)[15] <- 'munic'
colnames(dados_rais_2017)[16] <- 'nat_jur'
colnames(dados_rais_2017)[17] <- 'reg_adm_df'
colnames(dados_rais_2017)[18] <- 'cnae_20_sub'
colnames(dados_rais_2017)[19] <- 'tam_est'
colnames(dados_rais_2017)[20] <- 'tip_est'
colnames(dados_rais_2017)[21] <- 'tip_est_2'
colnames(dados_rais_2017)[22] <- 'uf'
colnames(dados_rais_2017)[23] <- 'ibge_sub'
colnames(dados_rais_2017)[24] <- 'cep_estab'

colnames(dados_rais_2018)[1]<- 'bairro_sp'
colnames(dados_rais_2018)[2]<- 'bairro_fz'
colnames(dados_rais_2018)[3]<- 'bairro_rj'
colnames(dados_rais_2018)[4]<- 'cnae_20'
colnames(dados_rais_2018)[5]<- 'cnae_95'
colnames(dados_rais_2018)[6]<- 'distritos_sp'
colnames(dados_rais_2018)[7]<- 'qtd_vinc_clt'
colnames(dados_rais_2018)[8]<- 'qtd_vinc_atv'
colnames(dados_rais_2018)[9]<- 'qtd_vinc_est'
colnames(dados_rais_2018)[10]<- 'ind_atv_ano'
colnames(dados_rais_2018)[11]<- 'ind_cei'
colnames(dados_rais_2018)[12]<- 'ind_est_pat'
colnames(dados_rais_2018)[13]<- 'ind_rais_neg'
colnames(dados_rais_2018)[14]<- 'ind_simp'
colnames(dados_rais_2018)[15]<- 'munic'
colnames(dados_rais_2018)[16]<- 'nat_jur'
colnames(dados_rais_2018)[17]<- 'reg_adm_df'
colnames(dados_rais_2018)[18]<- 'cnae_20_sub'
colnames(dados_rais_2018)[19]<- 'tam_est'
colnames(dados_rais_2018)[20]<- 'tip_est'
colnames(dados_rais_2018)[21]<- 'uf'
colnames(dados_rais_2018)[22]<- 'ibge_sub'
colnames(dados_rais_2018)[23]<- 'cep_estab'


rais_2002_b = filter(dados_rais_2002, trunc(munic) == 330190) %>%
  mutate(data = 2002, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_2003_b = filter(dados_rais_2003, trunc(munic) == 330190) %>%
  mutate(data = 2003, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_2004_b = filter(dados_rais_2004, trunc(munic) == 330190) %>%
  mutate(data = 2004, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_2005_b = filter(dados_rais_2005, trunc(munic) == 330190) %>%
  mutate(data = 2005, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_2006_b = filter(dados_rais_2006, trunc(munic) == 330190) %>%
  mutate(data = 2006, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_2007_b = filter(dados_rais_2007, trunc(munic) == 330190) %>%
  mutate(data = 2007, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_2008_b = filter(dados_rais_2008, trunc(munic) == 330190) %>%
  mutate(data = 2008, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_2009_b = filter(dados_rais_2009, trunc(munic) == 330190) %>%
  mutate(data = 2009, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_2010_b = filter(dados_rais_2010, trunc(munic) == 330190) %>%
  mutate(data = 2010, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_2011_b = filter(dados_rais_2011, trunc(munic) == 330190) %>%
  mutate(data = 2011, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_2012_b = filter(dados_rais_2012, trunc(munic) == 330190) %>%
  mutate(data = 2012, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_2013_b = filter(dados_rais_2013, trunc(munic) == 330190) %>%
  mutate(data = 2013, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_2014_b = filter(dados_rais_2014, trunc(munic) == 330190) %>%
  mutate(data = 2014, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_2015_b = filter(dados_rais_2015, trunc(munic) == 330190) %>%
  mutate(data = 2015, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_2016_b = filter(dados_rais_2016, trunc(munic) == 330190) %>%
  mutate(data = 2016, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_2017_b = filter(dados_rais_2017, trunc(munic) == 330190) %>%
  mutate(data = 2017, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_2018_b = filter(dados_rais_2018, trunc(munic) == 330190) %>%
  mutate(data = 2018, nat_jur = as.numeric(nat_jur), cnae_95 = as.numeric(cnae_95), empresas = 1, ind_atv_ano = ifelse(qtd_vinc_atv>0, 1, 0)) %>%
  group_by(data, cnae_95, ind_cei, ind_est_pat, ind_rais_neg, ind_simp, ind_atv_ano,
           munic, nat_jur, tam_est, tip_est, tip_est_2) %>%
  summarise (cont_empresas = sum(empresas),
             sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
             sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
             sum_qtd_vinc_est = sum(qtd_vinc_est))

rais_total = rbind(rais_2005_b, rais_2002_b, rais_2003_b, rais_2004_b, rais_2006_b, rais_2007_b, rais_2008_b, 
                   rais_2009_b, rais_2010_b, rais_2011_b, rais_2012_b, rais_2013_b, rais_2014_b, rais_2015_b, 
                   rais_2016_b, rais_2017_b, rais_2018_b) %>%
                mutate(grp_cnae_95 = trunc(cnae_95/1000,0))

grup_cnae = read.csv2('C:/dados/dissertacao/grp_cnae.csv') %>% rename(grp_cnae_95 = 'cod')

rais_total2 = left_join(rais_total, grup_cnae, by = c('grp_cnae_95'))

write.csv2(rais_total2, file = "C:/dados/dissertacao/rais_total.csv")

