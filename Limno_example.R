#Load packages
library(dplyr)

#List of some people at limno
Some_limno_people <- c("Jorrit", "Ellinor", "Xavi", "Don", "Sofia", "Liam", "Eva", "Silke")

#And their no. plants in the office (one oulier?)
No_plants_in_office <- c(1, 3, 1, 1, 2, 2, 4, 4)

#Merge data into one file
Data <- cbind(Some_limno_people, No_plants_in_office)
Data <- as.data.frame(Data)

#Make no. plants numeric
Data$No_plants_in_office <- as.numeric(Data$No_plants_in_office)

#I saved it and pushed it to Github here last time
####NEW EDITS####
#Calculate mean 

Plants_at_limno_stats <- Data %>% summarise(across(No_plants_in_office, list(mean,sd,sum)))
#mean 2.875, SD: 3.97986, sum: 23
