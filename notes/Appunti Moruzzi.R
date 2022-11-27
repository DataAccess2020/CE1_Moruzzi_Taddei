# APPUNTI CHIARA MORUZZI

library(rio)

EVS_2017 <- import ("C:\\Users\\chiar\\OneDrive\\Desktop\\DAPS&CO\\DATA_ACCESS\\Class Exercise 1\\ZA7500_v5-0-0.dta")

library(tidyverse)
library(plyr)

h_i_rec <- EVS_2017 %>%
  mutate(v8=mapvalues(v8, from=c(-1,-2,-10,1,2,3,4,5),
                      to=c(NA,NA,NA,5,4,3,2,1)))%>%
  mutate(v261_r=mapvalues(v261_r, from=c(-10,-5,-2,-1,1,2,3),
                          to=c(NA,NA,NA,NA,1,2,3)))

#h_i_rec %>%
#  drop_na() %>% 
#  ggplot(., aes(x = v261_r, y = v8)) +
#  geom_smooth(method = "lm") +
#  ylab("Health") +
#  xlab("Income")+
#  scale_y_discrete(breaks = seq(1,5, by = 1))+
#                     theme_bw()

#scale_x_discrete(breaks = seq(1,3, by = 1))
#scale_y_discrete(breaks = seq(1,5, by = 1))

#h_i_rec %>%
#  drop_na() %>% 
#  ggplot(., aes(x = v261_r, y = v8)) +
#  geom_smooth(method = "lm") +
#  ylab("Health") +
#  xlab("Income")+
#  scale_y_discrete(breaks = seq(1,5, by = 1))+
#  theme_bw()

h_i_rec %>%
  drop_na() %>% 
  ggplot(., aes(x = v261_r, y = v8)) +
  geom_smooth(method = "lm") +
  ylab("Health")+
  xlab("Income")+
  scale_y_binned(breaks = seq(1,5, by = 1))+
  scale_x_continuous(breaks = seq(1,3, by = 1))+
  theme_bw()

h_i_rec %>%
  drop_na() %>% 
  ggplot(., aes(x = v261_r, y = v8)) +
  geom_smooth(method = "lm") +
  ylab("Health")+
  xlab("Income")+
  scale_y_binned(breaks = seq(1,5, by = 1))+
  scale_x_continuous(breaks = seq(1,3, by = 1))+
  theme_bw()


#update graph with renamed variables

he_in_df %>%
  drop_na() %>% 
  ggplot(., aes(x = income, y = health)) +
  geom_smooth(method = "lm") +
  ylab("Health")+
  xlab("Income")+
  scale_y_binned(breaks = seq(1,5, by = 1), labels=c("Very Poor", "Poor","Fair", "Good", "Very Good"))+
  scale_x_continuous(breaks = 1:3,  labels=c("Low Income", "Medium Income","High Income"))+
  theme_bw()







