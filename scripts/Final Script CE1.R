
#EVS 2017

library(rio)

EVS_2017 <- import ("C:\\Users\\chiar\\OneDrive\\Desktop\\DAPS&CO\\DATA_ACCESS\\Class Exercise 1\\ZA7500_v5-0-0.dta")

library(tidyverse)
library(plyr)


#RECODING VARIABLES V8 (HEALTH) AND V261_r (INCOME)
h_i_rec <- EVS_2017 %>%
  mutate(v8=mapvalues(v8, from=c(-1,-2,-10,1,2,3,4,5),
                      to=c(NA,NA,NA,5,4,3,2,1)))%>%
  mutate(v261_r=mapvalues(v261_r, from=c(-10,-5,-2,-1,1,2,3),
                          to=c(NA,NA,NA,NA,1,2,3)))

#RENAME VARIABLES
health <- h_i_rec$v8
income <- h_i_rec$v261_r

#Create a dataframe with the two variables (taddei)
he_in_df <- data.frame(health, income)

#HISTOGRAMS OF THE VALUES

#HEALT HIST
ggplot(h_i_rec, aes(x = health)) +
  geom_histogram(alpha = 1, col = "red", fill = "orange", binwidth = 1) +
  xlab("Health") +
  ylab("Number of people") +
  scale_x_continuous(breaks = seq(1,5, by = 1), labels=c("Very Poor", "Poor","Fair", "Good", "Very Good"))+
  theme_bw()

#INCOME HIST
ggplot(he_in_df, aes(x = income)) +
  geom_histogram(alpha = 1, col = "blue", fill = "light blue",  binwidth = 1) +
  xlab("Income") +
  ylab("Number of people") +
  scale_x_continuous(breaks = 1:3,  labels=c("Low Income", "Medium Income","High Income"))+
  coord_cartesian(ylim = c(16000, 18000))+
  theme_bw()

#REGRESSION STATISTICAL CALCULATIONS

#REGRESSION PLOT
he_in_df %>%
  drop_na() %>% 
  ggplot(., aes(x = income, y = health)) +
  geom_smooth(method = "lm") +
  ylab("Health")+
  xlab("Income")+
  scale_y_binned(breaks = seq(1,5, by = 1), labels=c("Very Poor", "Poor","Fair", "Good", "Very Good"))+
  scale_x_continuous(breaks = 1:3,  labels=c("Low Income", "Medium Income","High Income"))+
  theme_bw()







