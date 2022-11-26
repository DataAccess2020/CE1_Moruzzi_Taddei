#HISTIGRAM ISSUED BY CHIARA

ggplot(h_i_rec, aes(x = health)) +
  geom_histogram(alpha = 0.2, col = "red", fill = "orange") +
  xlab("Health") +
  ylab("Number of people") +
  theme_bw()

#Histogram w/ names HEALTH
ggplot(h_i_rec, aes(x = health)) +
  geom_histogram(alpha = 1, col = "red", fill = "orange", binwidth = 1) +
  xlab("Health") +
  ylab("Number of people") +
  scale_x_continuous(breaks = seq(1,5, by = 1), labels=c("Very Poor", "Poor","Fair", "Good", "Very Good"))+
  theme_bw()

#Histogram corrected widht
ggplot(h_i_rec, aes(x = health)) +
  geom_histogram(alpha = 1, col = "red", fill = "orange", binwidth = 1) +
  xlab("Health") +
  ylab("Number of people") +
  scale_x_continuous(breaks = seq(1,5, by = 1), labels=c("Very Poor", "Poor","Fair", "Good", "Very Good"))+
  theme_bw()

#Histogram w/ names INCOME
ggplot(h_i_rec, aes(x = v261_r)) +
  geom_histogram(alpha = 1, col = "blue", fill = "light blue",  binwidth = 1) +
  xlab("Income") +
  ylab("Number of people") +
  scale_x_continuous(breaks = 1:3,  labels=c("Low Income", "Medium Income","High Income"))+
  coord_cartesian(ylim = c(16000, 18000))+
  scale_y_continuous(labels = scales::percent)+
  theme_bw()

#THE GOOD ONE!!!
ggplot(he_in_df, aes(x = income)) +
  geom_histogram(alpha = 1, col = "blue", fill = "light blue",  binwidth = 1) +
  xlab("Income") +
  ylab("Number of people") +
  scale_x_continuous(breaks = 1:3,  labels=c("Low Income", "Medium Income","High Income"))+
  coord_cartesian(ylim = c(16000, 18000))+
  theme_bw()


