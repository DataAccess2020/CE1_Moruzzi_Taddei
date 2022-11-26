#REGRESSION

reg <- lm(health ~ income,
          data = he_in_df)

summary(reg)

# intercept = 3.2067
# coefficient = 0.2568
# adjusted R-squared = 0.0494
# *** level of significance