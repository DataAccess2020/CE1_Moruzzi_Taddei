# RENAME VARIABLES

health <- h_i_rec$v8
income <- h_i_rec$v261_r

#Create a dataframe with the two variables (taddei)
he_in_df <- data.frame(health, income)


#export dataset %>% 
write.csv(h_i_rec,"C:\\Users\\39333\\Desktop\\UNIVERSITA\\MAGISTRALE COM-DAPS&CO\\CORSI\\DATA ACCESS AND REGULATIONS\\CLASS EXCERCISE\\CE1_Moruzzi_Taddei\\data_proc\\evs_recoded.csv", row.names = FALSE)

write.csv(he_in_df,"C:\\Users\\39333\\Desktop\\UNIVERSITA\\MAGISTRALE COM-DAPS&CO\\CORSI\\DATA ACCESS AND REGULATIONS\\CLASS EXCERCISE\\CE1_Moruzzi_Taddei\\data_proc\\df_health_income.csv", row.names = FALSE)