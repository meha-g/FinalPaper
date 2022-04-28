
#Simulation
#Simulate 100 values for variables 'Amount' and 'Feature_Category'

sim <- data_fin[which(row.names(data) %in% sample(row.names(data), 100, replace = TRUE)),c(8,5)]


#Plotting simulated data

ggplot(sim, mapping = aes(x= Amount, y= Feature_Category)) + 
  geom_point() +
  geom_smooth(method = "lm",
              formula = "y~x")

