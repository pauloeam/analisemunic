  
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

  rais_2017_1 = filter(dados_rais_2017, munic >= 0, munic < 100000) %>%
    mutate(ano = 2017, nat_jur = as.numeric(nat_jur), grp_cnae_95 = trunc(as.numeric(cnae_95)/1000,0), empresas = 1) %>%
    left_join(grup_cnae, by = c('grp_cnae_95')) %>%
    group_by(ano, grp_cnae, munic) %>%
    summarise (cont_empresas = sum(empresas),
               sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
               sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
               sum_qtd_vinc_est = sum(qtd_vinc_est)) %>%
    mutate( cont_empresas_A = ifelse (grp_cnae == 'A', cont_empresas, 0),
            cont_empresas_B = ifelse (grp_cnae == 'B', cont_empresas, 0),
            cont_empresas_C = ifelse (grp_cnae == 'C', cont_empresas, 0),
            cont_empresas_D = ifelse (grp_cnae == 'D', cont_empresas, 0),
            cont_empresas_E = ifelse (grp_cnae == 'E', cont_empresas, 0),
            cont_empresas_F = ifelse (grp_cnae == 'F', cont_empresas, 0),
            cont_empresas_G = ifelse (grp_cnae == 'G', cont_empresas, 0),
            cont_empresas_H = ifelse (grp_cnae == 'H', cont_empresas, 0),
            cont_empresas_I = ifelse (grp_cnae == 'I', cont_empresas, 0),
            cont_empresas_J = ifelse (grp_cnae == 'J', cont_empresas, 0),
            cont_empresas_K = ifelse (grp_cnae == 'K', cont_empresas, 0),
            cont_empresas_L = ifelse (grp_cnae == 'L', cont_empresas, 0),
            cont_empresas_M = ifelse (grp_cnae == 'M', cont_empresas, 0),
            cont_empresas_N = ifelse (grp_cnae == 'N', cont_empresas, 0),
            cont_empresas_O = ifelse (grp_cnae == 'O', cont_empresas, 0),
            cont_empresas_P = ifelse (grp_cnae == 'P', cont_empresas, 0),
            cont_empresas_Q = ifelse (grp_cnae == 'Q', cont_empresas, 0),
            
            sum_qtd_vinc_clt_A = ifelse (grp_cnae == 'A', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_B = ifelse (grp_cnae == 'B', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_C = ifelse (grp_cnae == 'C', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_D = ifelse (grp_cnae == 'D', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_E = ifelse (grp_cnae == 'E', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_F = ifelse (grp_cnae == 'F', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_G = ifelse (grp_cnae == 'G', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_H = ifelse (grp_cnae == 'H', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_I = ifelse (grp_cnae == 'I', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_J = ifelse (grp_cnae == 'J', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_K = ifelse (grp_cnae == 'K', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_L = ifelse (grp_cnae == 'L', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_M = ifelse (grp_cnae == 'M', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_N = ifelse (grp_cnae == 'N', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_O = ifelse (grp_cnae == 'O', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_P = ifelse (grp_cnae == 'P', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_Q = ifelse (grp_cnae == 'Q', sum_qtd_vinc_clt, 0),
            
            sum_qtd_vinc_atv_A = ifelse (grp_cnae == 'A', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_B = ifelse (grp_cnae == 'B', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_C = ifelse (grp_cnae == 'C', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_D = ifelse (grp_cnae == 'D', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_E = ifelse (grp_cnae == 'E', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_F = ifelse (grp_cnae == 'F', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_G = ifelse (grp_cnae == 'G', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_H = ifelse (grp_cnae == 'H', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_I = ifelse (grp_cnae == 'I', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_J = ifelse (grp_cnae == 'J', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_K = ifelse (grp_cnae == 'K', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_L = ifelse (grp_cnae == 'L', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_M = ifelse (grp_cnae == 'M', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_N = ifelse (grp_cnae == 'N', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_O = ifelse (grp_cnae == 'O', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_P = ifelse (grp_cnae == 'P', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_Q = ifelse (grp_cnae == 'Q', sum_qtd_vinc_atv, 0),
            
            sum_qtd_vinc_est_A = ifelse (grp_cnae == 'A', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_B = ifelse (grp_cnae == 'B', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_C = ifelse (grp_cnae == 'C', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_D = ifelse (grp_cnae == 'D', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_E = ifelse (grp_cnae == 'E', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_F = ifelse (grp_cnae == 'F', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_G = ifelse (grp_cnae == 'G', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_H = ifelse (grp_cnae == 'H', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_I = ifelse (grp_cnae == 'I', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_J = ifelse (grp_cnae == 'J', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_K = ifelse (grp_cnae == 'K', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_L = ifelse (grp_cnae == 'L', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_M = ifelse (grp_cnae == 'M', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_N = ifelse (grp_cnae == 'N', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_O = ifelse (grp_cnae == 'O', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_P = ifelse (grp_cnae == 'P', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_Q = ifelse (grp_cnae == 'Q', sum_qtd_vinc_est, 0)
    ) %>%
    group_by(ano, munic) %>%
    summarise(sum_cont_empresas_A = sum(cont_empresas_A),
              sum_cont_empresas_B = sum(cont_empresas_B),
              sum_cont_empresas_C = sum(cont_empresas_C),
              sum_cont_empresas_D = sum(cont_empresas_D),
              sum_cont_empresas_E = sum(cont_empresas_E),
              sum_cont_empresas_F = sum(cont_empresas_F),
              sum_cont_empresas_G = sum(cont_empresas_G),
              sum_cont_empresas_H = sum(cont_empresas_H),
              sum_cont_empresas_I = sum(cont_empresas_I),
              sum_cont_empresas_J = sum(cont_empresas_J),
              sum_cont_empresas_K = sum(cont_empresas_K),
              sum_cont_empresas_L = sum(cont_empresas_L),
              sum_cont_empresas_M = sum(cont_empresas_M),
              sum_cont_empresas_N = sum(cont_empresas_N),
              sum_cont_empresas_O = sum(cont_empresas_O),
              sum_cont_empresas_P = sum(cont_empresas_P),
              sum_cont_empresas_Q = sum(cont_empresas_Q),
              
              sum_qtd_vinc_clt_A = sum(sum_qtd_vinc_clt_A),
              sum_qtd_vinc_clt_B = sum(sum_qtd_vinc_clt_B),
              sum_qtd_vinc_clt_C = sum(sum_qtd_vinc_clt_C),
              sum_qtd_vinc_clt_D = sum(sum_qtd_vinc_clt_D),
              sum_qtd_vinc_clt_E = sum(sum_qtd_vinc_clt_E),
              sum_qtd_vinc_clt_F = sum(sum_qtd_vinc_clt_F),
              sum_qtd_vinc_clt_G = sum(sum_qtd_vinc_clt_G),
              sum_qtd_vinc_clt_H = sum(sum_qtd_vinc_clt_H),
              sum_qtd_vinc_clt_I = sum(sum_qtd_vinc_clt_I),
              sum_qtd_vinc_clt_J = sum(sum_qtd_vinc_clt_J),
              sum_qtd_vinc_clt_K = sum(sum_qtd_vinc_clt_K),
              sum_qtd_vinc_clt_L = sum(sum_qtd_vinc_clt_L),
              sum_qtd_vinc_clt_M = sum(sum_qtd_vinc_clt_M),
              sum_qtd_vinc_clt_N = sum(sum_qtd_vinc_clt_N),
              sum_qtd_vinc_clt_O = sum(sum_qtd_vinc_clt_O),
              sum_qtd_vinc_clt_P = sum(sum_qtd_vinc_clt_P),
              sum_qtd_vinc_clt_Q = sum(sum_qtd_vinc_clt_Q),
              
              sum_qtd_vinc_atv_A = sum(sum_qtd_vinc_atv_A),
              sum_qtd_vinc_atv_B = sum(sum_qtd_vinc_atv_B),
              sum_qtd_vinc_atv_C = sum(sum_qtd_vinc_atv_C),
              sum_qtd_vinc_atv_D = sum(sum_qtd_vinc_atv_D),
              sum_qtd_vinc_atv_E = sum(sum_qtd_vinc_atv_E),
              sum_qtd_vinc_atv_F = sum(sum_qtd_vinc_atv_F),
              sum_qtd_vinc_atv_G = sum(sum_qtd_vinc_atv_G),
              sum_qtd_vinc_atv_H = sum(sum_qtd_vinc_atv_H),
              sum_qtd_vinc_atv_I = sum(sum_qtd_vinc_atv_I),
              sum_qtd_vinc_atv_J = sum(sum_qtd_vinc_atv_J),
              sum_qtd_vinc_atv_K = sum(sum_qtd_vinc_atv_K),
              sum_qtd_vinc_atv_L = sum(sum_qtd_vinc_atv_L),
              sum_qtd_vinc_atv_M = sum(sum_qtd_vinc_atv_M),
              sum_qtd_vinc_atv_N = sum(sum_qtd_vinc_atv_N),
              sum_qtd_vinc_atv_O = sum(sum_qtd_vinc_atv_O),
              sum_qtd_vinc_atv_P = sum(sum_qtd_vinc_atv_P),
              sum_qtd_vinc_atv_Q = sum(sum_qtd_vinc_atv_Q),
              
              sum_qtd_vinc_est_A = sum(sum_qtd_vinc_est_A),
              sum_qtd_vinc_est_B = sum(sum_qtd_vinc_est_B),
              sum_qtd_vinc_est_C = sum(sum_qtd_vinc_est_C),
              sum_qtd_vinc_est_D = sum(sum_qtd_vinc_est_D),
              sum_qtd_vinc_est_E = sum(sum_qtd_vinc_est_E),
              sum_qtd_vinc_est_F = sum(sum_qtd_vinc_est_F),
              sum_qtd_vinc_est_G = sum(sum_qtd_vinc_est_G),
              sum_qtd_vinc_est_H = sum(sum_qtd_vinc_est_H),
              sum_qtd_vinc_est_I = sum(sum_qtd_vinc_est_I),
              sum_qtd_vinc_est_J = sum(sum_qtd_vinc_est_J),
              sum_qtd_vinc_est_K = sum(sum_qtd_vinc_est_K),
              sum_qtd_vinc_est_L = sum(sum_qtd_vinc_est_L),
              sum_qtd_vinc_est_M = sum(sum_qtd_vinc_est_M),
              sum_qtd_vinc_est_N = sum(sum_qtd_vinc_est_N),
              sum_qtd_vinc_est_O = sum(sum_qtd_vinc_est_O),
              sum_qtd_vinc_est_P = sum(sum_qtd_vinc_est_P),
              sum_qtd_vinc_est_Q = sum(sum_qtd_vinc_est_Q))
  rais_2017_2 = filter(dados_rais_2017, munic >= 100000, munic < 200000) %>%
    mutate(ano = 0, nat_jur = as.numeric(nat_jur), grp_cnae_95 = trunc(as.numeric(cnae_95)/1000,0), empresas = 1) %>%
    left_join(grup_cnae, by = c('grp_cnae_95')) %>%
    group_by(ano, grp_cnae, munic) %>%
    summarise (cont_empresas = sum(empresas),
               sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
               sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
               sum_qtd_vinc_est = sum(qtd_vinc_est)) %>%
    mutate( cont_empresas_A = ifelse (grp_cnae == 'A', cont_empresas, 0),
            cont_empresas_B = ifelse (grp_cnae == 'B', cont_empresas, 0),
            cont_empresas_C = ifelse (grp_cnae == 'C', cont_empresas, 0),
            cont_empresas_D = ifelse (grp_cnae == 'D', cont_empresas, 0),
            cont_empresas_E = ifelse (grp_cnae == 'E', cont_empresas, 0),
            cont_empresas_F = ifelse (grp_cnae == 'F', cont_empresas, 0),
            cont_empresas_G = ifelse (grp_cnae == 'G', cont_empresas, 0),
            cont_empresas_H = ifelse (grp_cnae == 'H', cont_empresas, 0),
            cont_empresas_I = ifelse (grp_cnae == 'I', cont_empresas, 0),
            cont_empresas_J = ifelse (grp_cnae == 'J', cont_empresas, 0),
            cont_empresas_K = ifelse (grp_cnae == 'K', cont_empresas, 0),
            cont_empresas_L = ifelse (grp_cnae == 'L', cont_empresas, 0),
            cont_empresas_M = ifelse (grp_cnae == 'M', cont_empresas, 0),
            cont_empresas_N = ifelse (grp_cnae == 'N', cont_empresas, 0),
            cont_empresas_O = ifelse (grp_cnae == 'O', cont_empresas, 0),
            cont_empresas_P = ifelse (grp_cnae == 'P', cont_empresas, 0),
            cont_empresas_Q = ifelse (grp_cnae == 'Q', cont_empresas, 0),
            
            sum_qtd_vinc_clt_A = ifelse (grp_cnae == 'A', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_B = ifelse (grp_cnae == 'B', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_C = ifelse (grp_cnae == 'C', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_D = ifelse (grp_cnae == 'D', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_E = ifelse (grp_cnae == 'E', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_F = ifelse (grp_cnae == 'F', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_G = ifelse (grp_cnae == 'G', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_H = ifelse (grp_cnae == 'H', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_I = ifelse (grp_cnae == 'I', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_J = ifelse (grp_cnae == 'J', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_K = ifelse (grp_cnae == 'K', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_L = ifelse (grp_cnae == 'L', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_M = ifelse (grp_cnae == 'M', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_N = ifelse (grp_cnae == 'N', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_O = ifelse (grp_cnae == 'O', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_P = ifelse (grp_cnae == 'P', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_Q = ifelse (grp_cnae == 'Q', sum_qtd_vinc_clt, 0),
            
            sum_qtd_vinc_atv_A = ifelse (grp_cnae == 'A', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_B = ifelse (grp_cnae == 'B', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_C = ifelse (grp_cnae == 'C', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_D = ifelse (grp_cnae == 'D', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_E = ifelse (grp_cnae == 'E', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_F = ifelse (grp_cnae == 'F', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_G = ifelse (grp_cnae == 'G', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_H = ifelse (grp_cnae == 'H', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_I = ifelse (grp_cnae == 'I', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_J = ifelse (grp_cnae == 'J', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_K = ifelse (grp_cnae == 'K', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_L = ifelse (grp_cnae == 'L', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_M = ifelse (grp_cnae == 'M', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_N = ifelse (grp_cnae == 'N', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_O = ifelse (grp_cnae == 'O', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_P = ifelse (grp_cnae == 'P', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_Q = ifelse (grp_cnae == 'Q', sum_qtd_vinc_atv, 0),
            
            sum_qtd_vinc_est_A = ifelse (grp_cnae == 'A', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_B = ifelse (grp_cnae == 'B', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_C = ifelse (grp_cnae == 'C', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_D = ifelse (grp_cnae == 'D', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_E = ifelse (grp_cnae == 'E', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_F = ifelse (grp_cnae == 'F', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_G = ifelse (grp_cnae == 'G', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_H = ifelse (grp_cnae == 'H', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_I = ifelse (grp_cnae == 'I', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_J = ifelse (grp_cnae == 'J', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_K = ifelse (grp_cnae == 'K', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_L = ifelse (grp_cnae == 'L', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_M = ifelse (grp_cnae == 'M', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_N = ifelse (grp_cnae == 'N', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_O = ifelse (grp_cnae == 'O', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_P = ifelse (grp_cnae == 'P', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_Q = ifelse (grp_cnae == 'Q', sum_qtd_vinc_est, 0)
    ) %>%
    group_by(ano, munic) %>%
    summarise(sum_cont_empresas_A = sum(cont_empresas_A),
              sum_cont_empresas_B = sum(cont_empresas_B),
              sum_cont_empresas_C = sum(cont_empresas_C),
              sum_cont_empresas_D = sum(cont_empresas_D),
              sum_cont_empresas_E = sum(cont_empresas_E),
              sum_cont_empresas_F = sum(cont_empresas_F),
              sum_cont_empresas_G = sum(cont_empresas_G),
              sum_cont_empresas_H = sum(cont_empresas_H),
              sum_cont_empresas_I = sum(cont_empresas_I),
              sum_cont_empresas_J = sum(cont_empresas_J),
              sum_cont_empresas_K = sum(cont_empresas_K),
              sum_cont_empresas_L = sum(cont_empresas_L),
              sum_cont_empresas_M = sum(cont_empresas_M),
              sum_cont_empresas_N = sum(cont_empresas_N),
              sum_cont_empresas_O = sum(cont_empresas_O),
              sum_cont_empresas_P = sum(cont_empresas_P),
              sum_cont_empresas_Q = sum(cont_empresas_Q),
              
              sum_qtd_vinc_clt_A = sum(sum_qtd_vinc_clt_A),
              sum_qtd_vinc_clt_B = sum(sum_qtd_vinc_clt_B),
              sum_qtd_vinc_clt_C = sum(sum_qtd_vinc_clt_C),
              sum_qtd_vinc_clt_D = sum(sum_qtd_vinc_clt_D),
              sum_qtd_vinc_clt_E = sum(sum_qtd_vinc_clt_E),
              sum_qtd_vinc_clt_F = sum(sum_qtd_vinc_clt_F),
              sum_qtd_vinc_clt_G = sum(sum_qtd_vinc_clt_G),
              sum_qtd_vinc_clt_H = sum(sum_qtd_vinc_clt_H),
              sum_qtd_vinc_clt_I = sum(sum_qtd_vinc_clt_I),
              sum_qtd_vinc_clt_J = sum(sum_qtd_vinc_clt_J),
              sum_qtd_vinc_clt_K = sum(sum_qtd_vinc_clt_K),
              sum_qtd_vinc_clt_L = sum(sum_qtd_vinc_clt_L),
              sum_qtd_vinc_clt_M = sum(sum_qtd_vinc_clt_M),
              sum_qtd_vinc_clt_N = sum(sum_qtd_vinc_clt_N),
              sum_qtd_vinc_clt_O = sum(sum_qtd_vinc_clt_O),
              sum_qtd_vinc_clt_P = sum(sum_qtd_vinc_clt_P),
              sum_qtd_vinc_clt_Q = sum(sum_qtd_vinc_clt_Q),
              
              sum_qtd_vinc_atv_A = sum(sum_qtd_vinc_atv_A),
              sum_qtd_vinc_atv_B = sum(sum_qtd_vinc_atv_B),
              sum_qtd_vinc_atv_C = sum(sum_qtd_vinc_atv_C),
              sum_qtd_vinc_atv_D = sum(sum_qtd_vinc_atv_D),
              sum_qtd_vinc_atv_E = sum(sum_qtd_vinc_atv_E),
              sum_qtd_vinc_atv_F = sum(sum_qtd_vinc_atv_F),
              sum_qtd_vinc_atv_G = sum(sum_qtd_vinc_atv_G),
              sum_qtd_vinc_atv_H = sum(sum_qtd_vinc_atv_H),
              sum_qtd_vinc_atv_I = sum(sum_qtd_vinc_atv_I),
              sum_qtd_vinc_atv_J = sum(sum_qtd_vinc_atv_J),
              sum_qtd_vinc_atv_K = sum(sum_qtd_vinc_atv_K),
              sum_qtd_vinc_atv_L = sum(sum_qtd_vinc_atv_L),
              sum_qtd_vinc_atv_M = sum(sum_qtd_vinc_atv_M),
              sum_qtd_vinc_atv_N = sum(sum_qtd_vinc_atv_N),
              sum_qtd_vinc_atv_O = sum(sum_qtd_vinc_atv_O),
              sum_qtd_vinc_atv_P = sum(sum_qtd_vinc_atv_P),
              sum_qtd_vinc_atv_Q = sum(sum_qtd_vinc_atv_Q),
              
              sum_qtd_vinc_est_A = sum(sum_qtd_vinc_est_A),
              sum_qtd_vinc_est_B = sum(sum_qtd_vinc_est_B),
              sum_qtd_vinc_est_C = sum(sum_qtd_vinc_est_C),
              sum_qtd_vinc_est_D = sum(sum_qtd_vinc_est_D),
              sum_qtd_vinc_est_E = sum(sum_qtd_vinc_est_E),
              sum_qtd_vinc_est_F = sum(sum_qtd_vinc_est_F),
              sum_qtd_vinc_est_G = sum(sum_qtd_vinc_est_G),
              sum_qtd_vinc_est_H = sum(sum_qtd_vinc_est_H),
              sum_qtd_vinc_est_I = sum(sum_qtd_vinc_est_I),
              sum_qtd_vinc_est_J = sum(sum_qtd_vinc_est_J),
              sum_qtd_vinc_est_K = sum(sum_qtd_vinc_est_K),
              sum_qtd_vinc_est_L = sum(sum_qtd_vinc_est_L),
              sum_qtd_vinc_est_M = sum(sum_qtd_vinc_est_M),
              sum_qtd_vinc_est_N = sum(sum_qtd_vinc_est_N),
              sum_qtd_vinc_est_O = sum(sum_qtd_vinc_est_O),
              sum_qtd_vinc_est_P = sum(sum_qtd_vinc_est_P),
              sum_qtd_vinc_est_Q = sum(sum_qtd_vinc_est_Q))
  rais_2017_3 = filter(dados_rais_2017, munic >= 200000, munic < 300000) %>%
    mutate(ano = 2017, nat_jur = as.numeric(nat_jur), grp_cnae_95 = trunc(as.numeric(cnae_95)/1000,0), empresas = 1) %>%
    left_join(grup_cnae, by = c('grp_cnae_95')) %>%
    group_by(ano, grp_cnae, munic) %>%
    summarise (cont_empresas = sum(empresas),
               sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
               sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
               sum_qtd_vinc_est = sum(qtd_vinc_est)) %>%
    mutate( cont_empresas_A = ifelse (grp_cnae == 'A', cont_empresas, 0),
            cont_empresas_B = ifelse (grp_cnae == 'B', cont_empresas, 0),
            cont_empresas_C = ifelse (grp_cnae == 'C', cont_empresas, 0),
            cont_empresas_D = ifelse (grp_cnae == 'D', cont_empresas, 0),
            cont_empresas_E = ifelse (grp_cnae == 'E', cont_empresas, 0),
            cont_empresas_F = ifelse (grp_cnae == 'F', cont_empresas, 0),
            cont_empresas_G = ifelse (grp_cnae == 'G', cont_empresas, 0),
            cont_empresas_H = ifelse (grp_cnae == 'H', cont_empresas, 0),
            cont_empresas_I = ifelse (grp_cnae == 'I', cont_empresas, 0),
            cont_empresas_J = ifelse (grp_cnae == 'J', cont_empresas, 0),
            cont_empresas_K = ifelse (grp_cnae == 'K', cont_empresas, 0),
            cont_empresas_L = ifelse (grp_cnae == 'L', cont_empresas, 0),
            cont_empresas_M = ifelse (grp_cnae == 'M', cont_empresas, 0),
            cont_empresas_N = ifelse (grp_cnae == 'N', cont_empresas, 0),
            cont_empresas_O = ifelse (grp_cnae == 'O', cont_empresas, 0),
            cont_empresas_P = ifelse (grp_cnae == 'P', cont_empresas, 0),
            cont_empresas_Q = ifelse (grp_cnae == 'Q', cont_empresas, 0),
            
            sum_qtd_vinc_clt_A = ifelse (grp_cnae == 'A', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_B = ifelse (grp_cnae == 'B', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_C = ifelse (grp_cnae == 'C', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_D = ifelse (grp_cnae == 'D', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_E = ifelse (grp_cnae == 'E', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_F = ifelse (grp_cnae == 'F', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_G = ifelse (grp_cnae == 'G', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_H = ifelse (grp_cnae == 'H', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_I = ifelse (grp_cnae == 'I', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_J = ifelse (grp_cnae == 'J', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_K = ifelse (grp_cnae == 'K', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_L = ifelse (grp_cnae == 'L', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_M = ifelse (grp_cnae == 'M', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_N = ifelse (grp_cnae == 'N', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_O = ifelse (grp_cnae == 'O', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_P = ifelse (grp_cnae == 'P', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_Q = ifelse (grp_cnae == 'Q', sum_qtd_vinc_clt, 0),
            
            sum_qtd_vinc_atv_A = ifelse (grp_cnae == 'A', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_B = ifelse (grp_cnae == 'B', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_C = ifelse (grp_cnae == 'C', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_D = ifelse (grp_cnae == 'D', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_E = ifelse (grp_cnae == 'E', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_F = ifelse (grp_cnae == 'F', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_G = ifelse (grp_cnae == 'G', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_H = ifelse (grp_cnae == 'H', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_I = ifelse (grp_cnae == 'I', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_J = ifelse (grp_cnae == 'J', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_K = ifelse (grp_cnae == 'K', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_L = ifelse (grp_cnae == 'L', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_M = ifelse (grp_cnae == 'M', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_N = ifelse (grp_cnae == 'N', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_O = ifelse (grp_cnae == 'O', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_P = ifelse (grp_cnae == 'P', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_Q = ifelse (grp_cnae == 'Q', sum_qtd_vinc_atv, 0),
            
            sum_qtd_vinc_est_A = ifelse (grp_cnae == 'A', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_B = ifelse (grp_cnae == 'B', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_C = ifelse (grp_cnae == 'C', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_D = ifelse (grp_cnae == 'D', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_E = ifelse (grp_cnae == 'E', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_F = ifelse (grp_cnae == 'F', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_G = ifelse (grp_cnae == 'G', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_H = ifelse (grp_cnae == 'H', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_I = ifelse (grp_cnae == 'I', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_J = ifelse (grp_cnae == 'J', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_K = ifelse (grp_cnae == 'K', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_L = ifelse (grp_cnae == 'L', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_M = ifelse (grp_cnae == 'M', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_N = ifelse (grp_cnae == 'N', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_O = ifelse (grp_cnae == 'O', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_P = ifelse (grp_cnae == 'P', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_Q = ifelse (grp_cnae == 'Q', sum_qtd_vinc_est, 0)
    ) %>%
    group_by(ano, munic) %>%
    summarise(sum_cont_empresas_A = sum(cont_empresas_A),
              sum_cont_empresas_B = sum(cont_empresas_B),
              sum_cont_empresas_C = sum(cont_empresas_C),
              sum_cont_empresas_D = sum(cont_empresas_D),
              sum_cont_empresas_E = sum(cont_empresas_E),
              sum_cont_empresas_F = sum(cont_empresas_F),
              sum_cont_empresas_G = sum(cont_empresas_G),
              sum_cont_empresas_H = sum(cont_empresas_H),
              sum_cont_empresas_I = sum(cont_empresas_I),
              sum_cont_empresas_J = sum(cont_empresas_J),
              sum_cont_empresas_K = sum(cont_empresas_K),
              sum_cont_empresas_L = sum(cont_empresas_L),
              sum_cont_empresas_M = sum(cont_empresas_M),
              sum_cont_empresas_N = sum(cont_empresas_N),
              sum_cont_empresas_O = sum(cont_empresas_O),
              sum_cont_empresas_P = sum(cont_empresas_P),
              sum_cont_empresas_Q = sum(cont_empresas_Q),
              
              sum_qtd_vinc_clt_A = sum(sum_qtd_vinc_clt_A),
              sum_qtd_vinc_clt_B = sum(sum_qtd_vinc_clt_B),
              sum_qtd_vinc_clt_C = sum(sum_qtd_vinc_clt_C),
              sum_qtd_vinc_clt_D = sum(sum_qtd_vinc_clt_D),
              sum_qtd_vinc_clt_E = sum(sum_qtd_vinc_clt_E),
              sum_qtd_vinc_clt_F = sum(sum_qtd_vinc_clt_F),
              sum_qtd_vinc_clt_G = sum(sum_qtd_vinc_clt_G),
              sum_qtd_vinc_clt_H = sum(sum_qtd_vinc_clt_H),
              sum_qtd_vinc_clt_I = sum(sum_qtd_vinc_clt_I),
              sum_qtd_vinc_clt_J = sum(sum_qtd_vinc_clt_J),
              sum_qtd_vinc_clt_K = sum(sum_qtd_vinc_clt_K),
              sum_qtd_vinc_clt_L = sum(sum_qtd_vinc_clt_L),
              sum_qtd_vinc_clt_M = sum(sum_qtd_vinc_clt_M),
              sum_qtd_vinc_clt_N = sum(sum_qtd_vinc_clt_N),
              sum_qtd_vinc_clt_O = sum(sum_qtd_vinc_clt_O),
              sum_qtd_vinc_clt_P = sum(sum_qtd_vinc_clt_P),
              sum_qtd_vinc_clt_Q = sum(sum_qtd_vinc_clt_Q),
              
              sum_qtd_vinc_atv_A = sum(sum_qtd_vinc_atv_A),
              sum_qtd_vinc_atv_B = sum(sum_qtd_vinc_atv_B),
              sum_qtd_vinc_atv_C = sum(sum_qtd_vinc_atv_C),
              sum_qtd_vinc_atv_D = sum(sum_qtd_vinc_atv_D),
              sum_qtd_vinc_atv_E = sum(sum_qtd_vinc_atv_E),
              sum_qtd_vinc_atv_F = sum(sum_qtd_vinc_atv_F),
              sum_qtd_vinc_atv_G = sum(sum_qtd_vinc_atv_G),
              sum_qtd_vinc_atv_H = sum(sum_qtd_vinc_atv_H),
              sum_qtd_vinc_atv_I = sum(sum_qtd_vinc_atv_I),
              sum_qtd_vinc_atv_J = sum(sum_qtd_vinc_atv_J),
              sum_qtd_vinc_atv_K = sum(sum_qtd_vinc_atv_K),
              sum_qtd_vinc_atv_L = sum(sum_qtd_vinc_atv_L),
              sum_qtd_vinc_atv_M = sum(sum_qtd_vinc_atv_M),
              sum_qtd_vinc_atv_N = sum(sum_qtd_vinc_atv_N),
              sum_qtd_vinc_atv_O = sum(sum_qtd_vinc_atv_O),
              sum_qtd_vinc_atv_P = sum(sum_qtd_vinc_atv_P),
              sum_qtd_vinc_atv_Q = sum(sum_qtd_vinc_atv_Q),
              
              sum_qtd_vinc_est_A = sum(sum_qtd_vinc_est_A),
              sum_qtd_vinc_est_B = sum(sum_qtd_vinc_est_B),
              sum_qtd_vinc_est_C = sum(sum_qtd_vinc_est_C),
              sum_qtd_vinc_est_D = sum(sum_qtd_vinc_est_D),
              sum_qtd_vinc_est_E = sum(sum_qtd_vinc_est_E),
              sum_qtd_vinc_est_F = sum(sum_qtd_vinc_est_F),
              sum_qtd_vinc_est_G = sum(sum_qtd_vinc_est_G),
              sum_qtd_vinc_est_H = sum(sum_qtd_vinc_est_H),
              sum_qtd_vinc_est_I = sum(sum_qtd_vinc_est_I),
              sum_qtd_vinc_est_J = sum(sum_qtd_vinc_est_J),
              sum_qtd_vinc_est_K = sum(sum_qtd_vinc_est_K),
              sum_qtd_vinc_est_L = sum(sum_qtd_vinc_est_L),
              sum_qtd_vinc_est_M = sum(sum_qtd_vinc_est_M),
              sum_qtd_vinc_est_N = sum(sum_qtd_vinc_est_N),
              sum_qtd_vinc_est_O = sum(sum_qtd_vinc_est_O),
              sum_qtd_vinc_est_P = sum(sum_qtd_vinc_est_P),
              sum_qtd_vinc_est_Q = sum(sum_qtd_vinc_est_Q))
  rais_2017_4 = filter(dados_rais_2017, munic >= 300000, munic < 400000) %>%
    mutate(ano = 200000, nat_jur = as.numeric(nat_jur), grp_cnae_95 = trunc(as.numeric(cnae_95)/1000,0), empresas = 1) %>%
    left_join(grup_cnae, by = c('grp_cnae_95')) %>%
    group_by(ano, grp_cnae, munic) %>%
    summarise (cont_empresas = sum(empresas),
               sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
               sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
               sum_qtd_vinc_est = sum(qtd_vinc_est)) %>%
    mutate( cont_empresas_A = ifelse (grp_cnae == 'A', cont_empresas, 0),
            cont_empresas_B = ifelse (grp_cnae == 'B', cont_empresas, 0),
            cont_empresas_C = ifelse (grp_cnae == 'C', cont_empresas, 0),
            cont_empresas_D = ifelse (grp_cnae == 'D', cont_empresas, 0),
            cont_empresas_E = ifelse (grp_cnae == 'E', cont_empresas, 0),
            cont_empresas_F = ifelse (grp_cnae == 'F', cont_empresas, 0),
            cont_empresas_G = ifelse (grp_cnae == 'G', cont_empresas, 0),
            cont_empresas_H = ifelse (grp_cnae == 'H', cont_empresas, 0),
            cont_empresas_I = ifelse (grp_cnae == 'I', cont_empresas, 0),
            cont_empresas_J = ifelse (grp_cnae == 'J', cont_empresas, 0),
            cont_empresas_K = ifelse (grp_cnae == 'K', cont_empresas, 0),
            cont_empresas_L = ifelse (grp_cnae == 'L', cont_empresas, 0),
            cont_empresas_M = ifelse (grp_cnae == 'M', cont_empresas, 0),
            cont_empresas_N = ifelse (grp_cnae == 'N', cont_empresas, 0),
            cont_empresas_O = ifelse (grp_cnae == 'O', cont_empresas, 0),
            cont_empresas_P = ifelse (grp_cnae == 'P', cont_empresas, 0),
            cont_empresas_Q = ifelse (grp_cnae == 'Q', cont_empresas, 0),
            
            sum_qtd_vinc_clt_A = ifelse (grp_cnae == 'A', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_B = ifelse (grp_cnae == 'B', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_C = ifelse (grp_cnae == 'C', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_D = ifelse (grp_cnae == 'D', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_E = ifelse (grp_cnae == 'E', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_F = ifelse (grp_cnae == 'F', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_G = ifelse (grp_cnae == 'G', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_H = ifelse (grp_cnae == 'H', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_I = ifelse (grp_cnae == 'I', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_J = ifelse (grp_cnae == 'J', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_K = ifelse (grp_cnae == 'K', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_L = ifelse (grp_cnae == 'L', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_M = ifelse (grp_cnae == 'M', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_N = ifelse (grp_cnae == 'N', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_O = ifelse (grp_cnae == 'O', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_P = ifelse (grp_cnae == 'P', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_Q = ifelse (grp_cnae == 'Q', sum_qtd_vinc_clt, 0),
            
            sum_qtd_vinc_atv_A = ifelse (grp_cnae == 'A', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_B = ifelse (grp_cnae == 'B', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_C = ifelse (grp_cnae == 'C', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_D = ifelse (grp_cnae == 'D', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_E = ifelse (grp_cnae == 'E', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_F = ifelse (grp_cnae == 'F', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_G = ifelse (grp_cnae == 'G', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_H = ifelse (grp_cnae == 'H', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_I = ifelse (grp_cnae == 'I', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_J = ifelse (grp_cnae == 'J', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_K = ifelse (grp_cnae == 'K', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_L = ifelse (grp_cnae == 'L', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_M = ifelse (grp_cnae == 'M', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_N = ifelse (grp_cnae == 'N', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_O = ifelse (grp_cnae == 'O', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_P = ifelse (grp_cnae == 'P', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_Q = ifelse (grp_cnae == 'Q', sum_qtd_vinc_atv, 0),
            
            sum_qtd_vinc_est_A = ifelse (grp_cnae == 'A', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_B = ifelse (grp_cnae == 'B', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_C = ifelse (grp_cnae == 'C', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_D = ifelse (grp_cnae == 'D', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_E = ifelse (grp_cnae == 'E', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_F = ifelse (grp_cnae == 'F', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_G = ifelse (grp_cnae == 'G', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_H = ifelse (grp_cnae == 'H', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_I = ifelse (grp_cnae == 'I', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_J = ifelse (grp_cnae == 'J', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_K = ifelse (grp_cnae == 'K', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_L = ifelse (grp_cnae == 'L', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_M = ifelse (grp_cnae == 'M', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_N = ifelse (grp_cnae == 'N', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_O = ifelse (grp_cnae == 'O', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_P = ifelse (grp_cnae == 'P', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_Q = ifelse (grp_cnae == 'Q', sum_qtd_vinc_est, 0)
    ) %>%
    group_by(ano, munic) %>%
    summarise(sum_cont_empresas_A = sum(cont_empresas_A),
              sum_cont_empresas_B = sum(cont_empresas_B),
              sum_cont_empresas_C = sum(cont_empresas_C),
              sum_cont_empresas_D = sum(cont_empresas_D),
              sum_cont_empresas_E = sum(cont_empresas_E),
              sum_cont_empresas_F = sum(cont_empresas_F),
              sum_cont_empresas_G = sum(cont_empresas_G),
              sum_cont_empresas_H = sum(cont_empresas_H),
              sum_cont_empresas_I = sum(cont_empresas_I),
              sum_cont_empresas_J = sum(cont_empresas_J),
              sum_cont_empresas_K = sum(cont_empresas_K),
              sum_cont_empresas_L = sum(cont_empresas_L),
              sum_cont_empresas_M = sum(cont_empresas_M),
              sum_cont_empresas_N = sum(cont_empresas_N),
              sum_cont_empresas_O = sum(cont_empresas_O),
              sum_cont_empresas_P = sum(cont_empresas_P),
              sum_cont_empresas_Q = sum(cont_empresas_Q),
              
              sum_qtd_vinc_clt_A = sum(sum_qtd_vinc_clt_A),
              sum_qtd_vinc_clt_B = sum(sum_qtd_vinc_clt_B),
              sum_qtd_vinc_clt_C = sum(sum_qtd_vinc_clt_C),
              sum_qtd_vinc_clt_D = sum(sum_qtd_vinc_clt_D),
              sum_qtd_vinc_clt_E = sum(sum_qtd_vinc_clt_E),
              sum_qtd_vinc_clt_F = sum(sum_qtd_vinc_clt_F),
              sum_qtd_vinc_clt_G = sum(sum_qtd_vinc_clt_G),
              sum_qtd_vinc_clt_H = sum(sum_qtd_vinc_clt_H),
              sum_qtd_vinc_clt_I = sum(sum_qtd_vinc_clt_I),
              sum_qtd_vinc_clt_J = sum(sum_qtd_vinc_clt_J),
              sum_qtd_vinc_clt_K = sum(sum_qtd_vinc_clt_K),
              sum_qtd_vinc_clt_L = sum(sum_qtd_vinc_clt_L),
              sum_qtd_vinc_clt_M = sum(sum_qtd_vinc_clt_M),
              sum_qtd_vinc_clt_N = sum(sum_qtd_vinc_clt_N),
              sum_qtd_vinc_clt_O = sum(sum_qtd_vinc_clt_O),
              sum_qtd_vinc_clt_P = sum(sum_qtd_vinc_clt_P),
              sum_qtd_vinc_clt_Q = sum(sum_qtd_vinc_clt_Q),
              
              sum_qtd_vinc_atv_A = sum(sum_qtd_vinc_atv_A),
              sum_qtd_vinc_atv_B = sum(sum_qtd_vinc_atv_B),
              sum_qtd_vinc_atv_C = sum(sum_qtd_vinc_atv_C),
              sum_qtd_vinc_atv_D = sum(sum_qtd_vinc_atv_D),
              sum_qtd_vinc_atv_E = sum(sum_qtd_vinc_atv_E),
              sum_qtd_vinc_atv_F = sum(sum_qtd_vinc_atv_F),
              sum_qtd_vinc_atv_G = sum(sum_qtd_vinc_atv_G),
              sum_qtd_vinc_atv_H = sum(sum_qtd_vinc_atv_H),
              sum_qtd_vinc_atv_I = sum(sum_qtd_vinc_atv_I),
              sum_qtd_vinc_atv_J = sum(sum_qtd_vinc_atv_J),
              sum_qtd_vinc_atv_K = sum(sum_qtd_vinc_atv_K),
              sum_qtd_vinc_atv_L = sum(sum_qtd_vinc_atv_L),
              sum_qtd_vinc_atv_M = sum(sum_qtd_vinc_atv_M),
              sum_qtd_vinc_atv_N = sum(sum_qtd_vinc_atv_N),
              sum_qtd_vinc_atv_O = sum(sum_qtd_vinc_atv_O),
              sum_qtd_vinc_atv_P = sum(sum_qtd_vinc_atv_P),
              sum_qtd_vinc_atv_Q = sum(sum_qtd_vinc_atv_Q),
              
              sum_qtd_vinc_est_A = sum(sum_qtd_vinc_est_A),
              sum_qtd_vinc_est_B = sum(sum_qtd_vinc_est_B),
              sum_qtd_vinc_est_C = sum(sum_qtd_vinc_est_C),
              sum_qtd_vinc_est_D = sum(sum_qtd_vinc_est_D),
              sum_qtd_vinc_est_E = sum(sum_qtd_vinc_est_E),
              sum_qtd_vinc_est_F = sum(sum_qtd_vinc_est_F),
              sum_qtd_vinc_est_G = sum(sum_qtd_vinc_est_G),
              sum_qtd_vinc_est_H = sum(sum_qtd_vinc_est_H),
              sum_qtd_vinc_est_I = sum(sum_qtd_vinc_est_I),
              sum_qtd_vinc_est_J = sum(sum_qtd_vinc_est_J),
              sum_qtd_vinc_est_K = sum(sum_qtd_vinc_est_K),
              sum_qtd_vinc_est_L = sum(sum_qtd_vinc_est_L),
              sum_qtd_vinc_est_M = sum(sum_qtd_vinc_est_M),
              sum_qtd_vinc_est_N = sum(sum_qtd_vinc_est_N),
              sum_qtd_vinc_est_O = sum(sum_qtd_vinc_est_O),
              sum_qtd_vinc_est_P = sum(sum_qtd_vinc_est_P),
              sum_qtd_vinc_est_Q = sum(sum_qtd_vinc_est_Q))
  rais_2017_5 = filter(dados_rais_2017, munic >= 400000, munic < 1000000) %>%
    mutate(ano = 300000, nat_jur = as.numeric(nat_jur), grp_cnae_95 = trunc(as.numeric(cnae_95)/1000,0), empresas = 1) %>%
    left_join(grup_cnae, by = c('grp_cnae_95')) %>%
    group_by(ano, grp_cnae, munic) %>%
    summarise (cont_empresas = sum(empresas),
               sum_qtd_vinc_clt = sum(qtd_vinc_clt), 
               sum_qtd_vinc_atv = sum(qtd_vinc_atv), 
               sum_qtd_vinc_est = sum(qtd_vinc_est)) %>%
    mutate( cont_empresas_A = ifelse (grp_cnae == 'A', cont_empresas, 0),
            cont_empresas_B = ifelse (grp_cnae == 'B', cont_empresas, 0),
            cont_empresas_C = ifelse (grp_cnae == 'C', cont_empresas, 0),
            cont_empresas_D = ifelse (grp_cnae == 'D', cont_empresas, 0),
            cont_empresas_E = ifelse (grp_cnae == 'E', cont_empresas, 0),
            cont_empresas_F = ifelse (grp_cnae == 'F', cont_empresas, 0),
            cont_empresas_G = ifelse (grp_cnae == 'G', cont_empresas, 0),
            cont_empresas_H = ifelse (grp_cnae == 'H', cont_empresas, 0),
            cont_empresas_I = ifelse (grp_cnae == 'I', cont_empresas, 0),
            cont_empresas_J = ifelse (grp_cnae == 'J', cont_empresas, 0),
            cont_empresas_K = ifelse (grp_cnae == 'K', cont_empresas, 0),
            cont_empresas_L = ifelse (grp_cnae == 'L', cont_empresas, 0),
            cont_empresas_M = ifelse (grp_cnae == 'M', cont_empresas, 0),
            cont_empresas_N = ifelse (grp_cnae == 'N', cont_empresas, 0),
            cont_empresas_O = ifelse (grp_cnae == 'O', cont_empresas, 0),
            cont_empresas_P = ifelse (grp_cnae == 'P', cont_empresas, 0),
            cont_empresas_Q = ifelse (grp_cnae == 'Q', cont_empresas, 0),
            
            sum_qtd_vinc_clt_A = ifelse (grp_cnae == 'A', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_B = ifelse (grp_cnae == 'B', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_C = ifelse (grp_cnae == 'C', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_D = ifelse (grp_cnae == 'D', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_E = ifelse (grp_cnae == 'E', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_F = ifelse (grp_cnae == 'F', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_G = ifelse (grp_cnae == 'G', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_H = ifelse (grp_cnae == 'H', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_I = ifelse (grp_cnae == 'I', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_J = ifelse (grp_cnae == 'J', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_K = ifelse (grp_cnae == 'K', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_L = ifelse (grp_cnae == 'L', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_M = ifelse (grp_cnae == 'M', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_N = ifelse (grp_cnae == 'N', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_O = ifelse (grp_cnae == 'O', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_P = ifelse (grp_cnae == 'P', sum_qtd_vinc_clt, 0),
            sum_qtd_vinc_clt_Q = ifelse (grp_cnae == 'Q', sum_qtd_vinc_clt, 0),
            
            sum_qtd_vinc_atv_A = ifelse (grp_cnae == 'A', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_B = ifelse (grp_cnae == 'B', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_C = ifelse (grp_cnae == 'C', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_D = ifelse (grp_cnae == 'D', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_E = ifelse (grp_cnae == 'E', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_F = ifelse (grp_cnae == 'F', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_G = ifelse (grp_cnae == 'G', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_H = ifelse (grp_cnae == 'H', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_I = ifelse (grp_cnae == 'I', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_J = ifelse (grp_cnae == 'J', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_K = ifelse (grp_cnae == 'K', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_L = ifelse (grp_cnae == 'L', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_M = ifelse (grp_cnae == 'M', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_N = ifelse (grp_cnae == 'N', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_O = ifelse (grp_cnae == 'O', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_P = ifelse (grp_cnae == 'P', sum_qtd_vinc_atv, 0),
            sum_qtd_vinc_atv_Q = ifelse (grp_cnae == 'Q', sum_qtd_vinc_atv, 0),
            
            sum_qtd_vinc_est_A = ifelse (grp_cnae == 'A', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_B = ifelse (grp_cnae == 'B', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_C = ifelse (grp_cnae == 'C', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_D = ifelse (grp_cnae == 'D', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_E = ifelse (grp_cnae == 'E', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_F = ifelse (grp_cnae == 'F', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_G = ifelse (grp_cnae == 'G', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_H = ifelse (grp_cnae == 'H', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_I = ifelse (grp_cnae == 'I', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_J = ifelse (grp_cnae == 'J', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_K = ifelse (grp_cnae == 'K', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_L = ifelse (grp_cnae == 'L', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_M = ifelse (grp_cnae == 'M', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_N = ifelse (grp_cnae == 'N', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_O = ifelse (grp_cnae == 'O', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_P = ifelse (grp_cnae == 'P', sum_qtd_vinc_est, 0),
            sum_qtd_vinc_est_Q = ifelse (grp_cnae == 'Q', sum_qtd_vinc_est, 0)
    ) %>%
    group_by(ano, munic) %>%
    summarise(sum_cont_empresas_A = sum(cont_empresas_A),
              sum_cont_empresas_B = sum(cont_empresas_B),
              sum_cont_empresas_C = sum(cont_empresas_C),
              sum_cont_empresas_D = sum(cont_empresas_D),
              sum_cont_empresas_E = sum(cont_empresas_E),
              sum_cont_empresas_F = sum(cont_empresas_F),
              sum_cont_empresas_G = sum(cont_empresas_G),
              sum_cont_empresas_H = sum(cont_empresas_H),
              sum_cont_empresas_I = sum(cont_empresas_I),
              sum_cont_empresas_J = sum(cont_empresas_J),
              sum_cont_empresas_K = sum(cont_empresas_K),
              sum_cont_empresas_L = sum(cont_empresas_L),
              sum_cont_empresas_M = sum(cont_empresas_M),
              sum_cont_empresas_N = sum(cont_empresas_N),
              sum_cont_empresas_O = sum(cont_empresas_O),
              sum_cont_empresas_P = sum(cont_empresas_P),
              sum_cont_empresas_Q = sum(cont_empresas_Q),
              
              sum_qtd_vinc_clt_A = sum(sum_qtd_vinc_clt_A),
              sum_qtd_vinc_clt_B = sum(sum_qtd_vinc_clt_B),
              sum_qtd_vinc_clt_C = sum(sum_qtd_vinc_clt_C),
              sum_qtd_vinc_clt_D = sum(sum_qtd_vinc_clt_D),
              sum_qtd_vinc_clt_E = sum(sum_qtd_vinc_clt_E),
              sum_qtd_vinc_clt_F = sum(sum_qtd_vinc_clt_F),
              sum_qtd_vinc_clt_G = sum(sum_qtd_vinc_clt_G),
              sum_qtd_vinc_clt_H = sum(sum_qtd_vinc_clt_H),
              sum_qtd_vinc_clt_I = sum(sum_qtd_vinc_clt_I),
              sum_qtd_vinc_clt_J = sum(sum_qtd_vinc_clt_J),
              sum_qtd_vinc_clt_K = sum(sum_qtd_vinc_clt_K),
              sum_qtd_vinc_clt_L = sum(sum_qtd_vinc_clt_L),
              sum_qtd_vinc_clt_M = sum(sum_qtd_vinc_clt_M),
              sum_qtd_vinc_clt_N = sum(sum_qtd_vinc_clt_N),
              sum_qtd_vinc_clt_O = sum(sum_qtd_vinc_clt_O),
              sum_qtd_vinc_clt_P = sum(sum_qtd_vinc_clt_P),
              sum_qtd_vinc_clt_Q = sum(sum_qtd_vinc_clt_Q),
              
              sum_qtd_vinc_atv_A = sum(sum_qtd_vinc_atv_A),
              sum_qtd_vinc_atv_B = sum(sum_qtd_vinc_atv_B),
              sum_qtd_vinc_atv_C = sum(sum_qtd_vinc_atv_C),
              sum_qtd_vinc_atv_D = sum(sum_qtd_vinc_atv_D),
              sum_qtd_vinc_atv_E = sum(sum_qtd_vinc_atv_E),
              sum_qtd_vinc_atv_F = sum(sum_qtd_vinc_atv_F),
              sum_qtd_vinc_atv_G = sum(sum_qtd_vinc_atv_G),
              sum_qtd_vinc_atv_H = sum(sum_qtd_vinc_atv_H),
              sum_qtd_vinc_atv_I = sum(sum_qtd_vinc_atv_I),
              sum_qtd_vinc_atv_J = sum(sum_qtd_vinc_atv_J),
              sum_qtd_vinc_atv_K = sum(sum_qtd_vinc_atv_K),
              sum_qtd_vinc_atv_L = sum(sum_qtd_vinc_atv_L),
              sum_qtd_vinc_atv_M = sum(sum_qtd_vinc_atv_M),
              sum_qtd_vinc_atv_N = sum(sum_qtd_vinc_atv_N),
              sum_qtd_vinc_atv_O = sum(sum_qtd_vinc_atv_O),
              sum_qtd_vinc_atv_P = sum(sum_qtd_vinc_atv_P),
              sum_qtd_vinc_atv_Q = sum(sum_qtd_vinc_atv_Q),
              
              sum_qtd_vinc_est_A = sum(sum_qtd_vinc_est_A),
              sum_qtd_vinc_est_B = sum(sum_qtd_vinc_est_B),
              sum_qtd_vinc_est_C = sum(sum_qtd_vinc_est_C),
              sum_qtd_vinc_est_D = sum(sum_qtd_vinc_est_D),
              sum_qtd_vinc_est_E = sum(sum_qtd_vinc_est_E),
              sum_qtd_vinc_est_F = sum(sum_qtd_vinc_est_F),
              sum_qtd_vinc_est_G = sum(sum_qtd_vinc_est_G),
              sum_qtd_vinc_est_H = sum(sum_qtd_vinc_est_H),
              sum_qtd_vinc_est_I = sum(sum_qtd_vinc_est_I),
              sum_qtd_vinc_est_J = sum(sum_qtd_vinc_est_J),
              sum_qtd_vinc_est_K = sum(sum_qtd_vinc_est_K),
              sum_qtd_vinc_est_L = sum(sum_qtd_vinc_est_L),
              sum_qtd_vinc_est_M = sum(sum_qtd_vinc_est_M),
              sum_qtd_vinc_est_N = sum(sum_qtd_vinc_est_N),
              sum_qtd_vinc_est_O = sum(sum_qtd_vinc_est_O),
              sum_qtd_vinc_est_P = sum(sum_qtd_vinc_est_P),
              sum_qtd_vinc_est_Q = sum(sum_qtd_vinc_est_Q))
  

rais_total = rbind(rais_2002_1, rais_2002_2, rais_2002_3, rais_2002_4, rais_2002_5, 
                   rais_2003_1, rais_2003_2, rais_2003_3, rais_2003_4, rais_2003_5, 
                   rais_2004_1, rais_2004_2, rais_2004_3, rais_2004_4, rais_2004_5, 
                   rais_2005_1, rais_2005_2, rais_2005_3, rais_2005_4, rais_2005_5, 
                   rais_2006_1, rais_2006_2, rais_2006_3, rais_2006_4, rais_2006_5, 
                   rais_2007_1, rais_2007_2, rais_2007_3, rais_2007_4, rais_2007_5, 
                   rais_2008_1, rais_2008_2, rais_2008_3, rais_2008_4, rais_2008_5, 
                   rais_2009_1, rais_2009_2, rais_2009_3, rais_2009_4, rais_2009_5, 
                   rais_2010_1, rais_2010_2, rais_2010_3, rais_2010_4, rais_2010_5, 
                   rais_2011_1, rais_2011_2, rais_2011_3, rais_2011_4, rais_2011_5, 
                   rais_2012_1, rais_2012_2, rais_2012_3, rais_2012_4, rais_2012_5,
                   rais_2013_1, rais_2013_2, rais_2013_3, rais_2013_4, rais_2013_5, 
                   rais_2014_1, rais_2014_2, rais_2014_3, rais_2014_4, rais_2014_5, 
                   rais_2015_1, rais_2015_2, rais_2015_3, rais_2015_4, rais_2015_5, 
                   rais_2016_1, rais_2016_2, rais_2016_3, rais_2016_4, rais_2016_5, 
                   rais_2017_1, rais_2017_2, rais_2017_3, rais_2017_4, rais_2017_5, 
                   rais_2018_1, rais_2018_2, rais_2018_3, rais_2018_4, rais_2018_5) %>%
                rename(cod_muni = munic) %>%
                mutate(var5_sum_cont_empresas_A = (sum_cont_empresas_A - lag(sum_cont_empresas_A, n = 5)) / lag(sum_cont_empresas_A, n = 5),
                       var5_sum_cont_empresas_B = (sum_cont_empresas_B - lag(sum_cont_empresas_B, n = 5)) / lag(sum_cont_empresas_B, n = 5),
                       var5_sum_cont_empresas_C = (sum_cont_empresas_C - lag(sum_cont_empresas_C, n = 5)) / lag(sum_cont_empresas_C, n = 5),
                       var5_sum_cont_empresas_D = (sum_cont_empresas_D - lag(sum_cont_empresas_D, n = 5)) / lag(sum_cont_empresas_D, n = 5),
                       var5_sum_cont_empresas_E = (sum_cont_empresas_E - lag(sum_cont_empresas_E, n = 5)) / lag(sum_cont_empresas_E, n = 5),
                       var5_sum_cont_empresas_F = (sum_cont_empresas_F - lag(sum_cont_empresas_F, n = 5)) / lag(sum_cont_empresas_F, n = 5),
                       var5_sum_cont_empresas_G = (sum_cont_empresas_G - lag(sum_cont_empresas_G, n = 5)) / lag(sum_cont_empresas_G, n = 5),
                       var5_sum_cont_empresas_H = (sum_cont_empresas_H - lag(sum_cont_empresas_H, n = 5)) / lag(sum_cont_empresas_H, n = 5),
                       var5_sum_cont_empresas_I = (sum_cont_empresas_I - lag(sum_cont_empresas_I, n = 5)) / lag(sum_cont_empresas_I, n = 5),
                       var5_sum_cont_empresas_J = (sum_cont_empresas_J - lag(sum_cont_empresas_J, n = 5)) / lag(sum_cont_empresas_J, n = 5),
                       var5_sum_cont_empresas_K = (sum_cont_empresas_K - lag(sum_cont_empresas_K, n = 5)) / lag(sum_cont_empresas_K, n = 5),
                       var5_sum_cont_empresas_L = (sum_cont_empresas_L - lag(sum_cont_empresas_L, n = 5)) / lag(sum_cont_empresas_L, n = 5),
                       var5_sum_cont_empresas_M = (sum_cont_empresas_M - lag(sum_cont_empresas_M, n = 5)) / lag(sum_cont_empresas_M, n = 5),
                       var5_sum_cont_empresas_N = (sum_cont_empresas_N - lag(sum_cont_empresas_N, n = 5)) / lag(sum_cont_empresas_N, n = 5),
                       var5_sum_cont_empresas_O = (sum_cont_empresas_O - lag(sum_cont_empresas_O, n = 5)) / lag(sum_cont_empresas_O, n = 5),
                       var5_sum_cont_empresas_P = (sum_cont_empresas_P - lag(sum_cont_empresas_P, n = 5)) / lag(sum_cont_empresas_P, n = 5),
                       var5_sum_cont_empresas_Q = (sum_cont_empresas_Q - lag(sum_cont_empresas_Q, n = 5)) / lag(sum_cont_empresas_Q, n = 5),
                       
                       var5_sum_qtd_vinc_clt_A = (sum_qtd_vinc_clt_A - lag(sum_qtd_vinc_clt_A, n = 5)) / lag(sum_qtd_vinc_clt_A, n = 5),
                       var5_sum_qtd_vinc_clt_B = (sum_qtd_vinc_clt_B - lag(sum_qtd_vinc_clt_B, n = 5)) / lag(sum_qtd_vinc_clt_B, n = 5),
                       var5_sum_qtd_vinc_clt_C = (sum_qtd_vinc_clt_C - lag(sum_qtd_vinc_clt_C, n = 5)) / lag(sum_qtd_vinc_clt_C, n = 5),
                       var5_sum_qtd_vinc_clt_D = (sum_qtd_vinc_clt_D - lag(sum_qtd_vinc_clt_D, n = 5)) / lag(sum_qtd_vinc_clt_D, n = 5),
                       var5_sum_qtd_vinc_clt_E = (sum_qtd_vinc_clt_E - lag(sum_qtd_vinc_clt_E, n = 5)) / lag(sum_qtd_vinc_clt_E, n = 5),
                       var5_sum_qtd_vinc_clt_F = (sum_qtd_vinc_clt_F - lag(sum_qtd_vinc_clt_F, n = 5)) / lag(sum_qtd_vinc_clt_F, n = 5),
                       var5_sum_qtd_vinc_clt_G = (sum_qtd_vinc_clt_G - lag(sum_qtd_vinc_clt_G, n = 5)) / lag(sum_qtd_vinc_clt_G, n = 5),
                       var5_sum_qtd_vinc_clt_H = (sum_qtd_vinc_clt_H - lag(sum_qtd_vinc_clt_H, n = 5)) / lag(sum_qtd_vinc_clt_H, n = 5),
                       var5_sum_qtd_vinc_clt_I = (sum_qtd_vinc_clt_I - lag(sum_qtd_vinc_clt_I, n = 5)) / lag(sum_qtd_vinc_clt_I, n = 5),
                       var5_sum_qtd_vinc_clt_J = (sum_qtd_vinc_clt_J - lag(sum_qtd_vinc_clt_J, n = 5)) / lag(sum_qtd_vinc_clt_J, n = 5),
                       var5_sum_qtd_vinc_clt_K = (sum_qtd_vinc_clt_K - lag(sum_qtd_vinc_clt_K, n = 5)) / lag(sum_qtd_vinc_clt_K, n = 5),
                       var5_sum_qtd_vinc_clt_L = (sum_qtd_vinc_clt_L - lag(sum_qtd_vinc_clt_L, n = 5)) / lag(sum_qtd_vinc_clt_L, n = 5),
                       var5_sum_qtd_vinc_clt_M = (sum_qtd_vinc_clt_M - lag(sum_qtd_vinc_clt_M, n = 5)) / lag(sum_qtd_vinc_clt_M, n = 5),
                       var5_sum_qtd_vinc_clt_N = (sum_qtd_vinc_clt_N - lag(sum_qtd_vinc_clt_N, n = 5)) / lag(sum_qtd_vinc_clt_N, n = 5),
                       var5_sum_qtd_vinc_clt_O = (sum_qtd_vinc_clt_O - lag(sum_qtd_vinc_clt_O, n = 5)) / lag(sum_qtd_vinc_clt_O, n = 5),
                       var5_sum_qtd_vinc_clt_P = (sum_qtd_vinc_clt_P - lag(sum_qtd_vinc_clt_P, n = 5)) / lag(sum_qtd_vinc_clt_P, n = 5),
                       var5_sum_qtd_vinc_clt_Q = (sum_qtd_vinc_clt_Q - lag(sum_qtd_vinc_clt_Q, n = 5)) / lag(sum_qtd_vinc_clt_Q, n = 5),
                       
                       var5_sum_qtd_vinc_atv_A = (sum_qtd_vinc_atv_A - lag(sum_qtd_vinc_atv_A, n = 5)) / lag(sum_qtd_vinc_atv_A, n = 5),
                       var5_sum_qtd_vinc_atv_B = (sum_qtd_vinc_atv_B - lag(sum_qtd_vinc_atv_B, n = 5)) / lag(sum_qtd_vinc_atv_B, n = 5),
                       var5_sum_qtd_vinc_atv_C = (sum_qtd_vinc_atv_C - lag(sum_qtd_vinc_atv_C, n = 5)) / lag(sum_qtd_vinc_atv_C, n = 5),
                       var5_sum_qtd_vinc_atv_D = (sum_qtd_vinc_atv_D - lag(sum_qtd_vinc_atv_D, n = 5)) / lag(sum_qtd_vinc_atv_D, n = 5),
                       var5_sum_qtd_vinc_atv_E = (sum_qtd_vinc_atv_E - lag(sum_qtd_vinc_atv_E, n = 5)) / lag(sum_qtd_vinc_atv_E, n = 5),
                       var5_sum_qtd_vinc_atv_F = (sum_qtd_vinc_atv_F - lag(sum_qtd_vinc_atv_F, n = 5)) / lag(sum_qtd_vinc_atv_F, n = 5),
                       var5_sum_qtd_vinc_atv_G = (sum_qtd_vinc_atv_G - lag(sum_qtd_vinc_atv_G, n = 5)) / lag(sum_qtd_vinc_atv_G, n = 5),
                       var5_sum_qtd_vinc_atv_H = (sum_qtd_vinc_atv_H - lag(sum_qtd_vinc_atv_H, n = 5)) / lag(sum_qtd_vinc_atv_H, n = 5),
                       var5_sum_qtd_vinc_atv_I = (sum_qtd_vinc_atv_I - lag(sum_qtd_vinc_atv_I, n = 5)) / lag(sum_qtd_vinc_atv_I, n = 5),
                       var5_sum_qtd_vinc_atv_J = (sum_qtd_vinc_atv_J - lag(sum_qtd_vinc_atv_J, n = 5)) / lag(sum_qtd_vinc_atv_J, n = 5),
                       var5_sum_qtd_vinc_atv_K = (sum_qtd_vinc_atv_K - lag(sum_qtd_vinc_atv_K, n = 5)) / lag(sum_qtd_vinc_atv_K, n = 5),
                       var5_sum_qtd_vinc_atv_L = (sum_qtd_vinc_atv_L - lag(sum_qtd_vinc_atv_L, n = 5)) / lag(sum_qtd_vinc_atv_L, n = 5),
                       var5_sum_qtd_vinc_atv_M = (sum_qtd_vinc_atv_M - lag(sum_qtd_vinc_atv_M, n = 5)) / lag(sum_qtd_vinc_atv_M, n = 5),
                       var5_sum_qtd_vinc_atv_N = (sum_qtd_vinc_atv_N - lag(sum_qtd_vinc_atv_N, n = 5)) / lag(sum_qtd_vinc_atv_N, n = 5),
                       var5_sum_qtd_vinc_atv_O = (sum_qtd_vinc_atv_O - lag(sum_qtd_vinc_atv_O, n = 5)) / lag(sum_qtd_vinc_atv_O, n = 5),
                       var5_sum_qtd_vinc_atv_P = (sum_qtd_vinc_atv_P - lag(sum_qtd_vinc_atv_P, n = 5)) / lag(sum_qtd_vinc_atv_P, n = 5),
                       var5_sum_qtd_vinc_atv_Q = (sum_qtd_vinc_atv_Q - lag(sum_qtd_vinc_atv_Q, n = 5)) / lag(sum_qtd_vinc_atv_Q, n = 5),
                       
                       var5_sum_qtd_vinc_est_A = (sum_qtd_vinc_est_A - lag(sum_qtd_vinc_est_A, n = 5)) / lag(sum_qtd_vinc_est_A, n = 5),
                       var5_sum_qtd_vinc_est_B = (sum_qtd_vinc_est_B - lag(sum_qtd_vinc_est_B, n = 5)) / lag(sum_qtd_vinc_est_B, n = 5),
                       var5_sum_qtd_vinc_est_C = (sum_qtd_vinc_est_C - lag(sum_qtd_vinc_est_C, n = 5)) / lag(sum_qtd_vinc_est_C, n = 5),
                       var5_sum_qtd_vinc_est_D = (sum_qtd_vinc_est_D - lag(sum_qtd_vinc_est_D, n = 5)) / lag(sum_qtd_vinc_est_D, n = 5),
                       var5_sum_qtd_vinc_est_E = (sum_qtd_vinc_est_E - lag(sum_qtd_vinc_est_E, n = 5)) / lag(sum_qtd_vinc_est_E, n = 5),
                       var5_sum_qtd_vinc_est_F = (sum_qtd_vinc_est_F - lag(sum_qtd_vinc_est_F, n = 5)) / lag(sum_qtd_vinc_est_F, n = 5),
                       var5_sum_qtd_vinc_est_G = (sum_qtd_vinc_est_G - lag(sum_qtd_vinc_est_G, n = 5)) / lag(sum_qtd_vinc_est_G, n = 5),
                       var5_sum_qtd_vinc_est_H = (sum_qtd_vinc_est_H - lag(sum_qtd_vinc_est_H, n = 5)) / lag(sum_qtd_vinc_est_H, n = 5),
                       var5_sum_qtd_vinc_est_I = (sum_qtd_vinc_est_I - lag(sum_qtd_vinc_est_I, n = 5)) / lag(sum_qtd_vinc_est_I, n = 5),
                       var5_sum_qtd_vinc_est_J = (sum_qtd_vinc_est_J - lag(sum_qtd_vinc_est_J, n = 5)) / lag(sum_qtd_vinc_est_J, n = 5),
                       var5_sum_qtd_vinc_est_K = (sum_qtd_vinc_est_K - lag(sum_qtd_vinc_est_K, n = 5)) / lag(sum_qtd_vinc_est_K, n = 5),
                       var5_sum_qtd_vinc_est_L = (sum_qtd_vinc_est_L - lag(sum_qtd_vinc_est_L, n = 5)) / lag(sum_qtd_vinc_est_L, n = 5),
                       var5_sum_qtd_vinc_est_M = (sum_qtd_vinc_est_M - lag(sum_qtd_vinc_est_M, n = 5)) / lag(sum_qtd_vinc_est_M, n = 5),
                       var5_sum_qtd_vinc_est_N = (sum_qtd_vinc_est_N - lag(sum_qtd_vinc_est_N, n = 5)) / lag(sum_qtd_vinc_est_N, n = 5),
                       var5_sum_qtd_vinc_est_O = (sum_qtd_vinc_est_O - lag(sum_qtd_vinc_est_O, n = 5)) / lag(sum_qtd_vinc_est_O, n = 5),
                       var5_sum_qtd_vinc_est_P = (sum_qtd_vinc_est_P - lag(sum_qtd_vinc_est_P, n = 5)) / lag(sum_qtd_vinc_est_P, n = 5),
                       var5_sum_qtd_vinc_est_Q = (sum_qtd_vinc_est_Q - lag(sum_qtd_vinc_est_Q, n = 5)) / lag(sum_qtd_vinc_est_Q, n = 5)
                )

write.csv2(rais_total, file = "C:/dados/dissertacao/rais_total.csv")
