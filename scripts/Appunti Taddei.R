library(tidyverse)
library(dplyr)
library(haven)
EVS_2017 <- read_stata("C:/Users/39333/Desktop/UNIVERSITA/MAGISTRALE COM-DAPS&CO/CORSI/DATA ACCESS AND REGULATIONS/CLASS EXCERCISE/CE1_Moruzzi_Taddei/data_orig/ZA7500_v5-0-0.dta")


h_i_rec %>%
  drop_na() %>% 
  ggplot(., aes(x = v261_r, y = v8)) +
  geom_smooth(method = "lm") +
  ylab("Health")+
  scale_y_binned(breaks = seq(1,5, by = 1), labels=c("Very Poor", "Poor","Fair", "Good", "Very Good"))+
  scale_x_continuous(breaks = 1:3,  labels=c("Low Income", "Medium Income","High Income"))+
  xlab("Income")+
  theme_bw()




#README RD CON SPIEGAZIONE GITHUB

#APRIE ALMENO 1 PULL REQUEST

