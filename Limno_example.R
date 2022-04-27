#Load packages
library(dplyr)

#List of some people at limno
Some_limno_people <- c("Jorrit", "Ellinor", "Xavi", "Don", "Sofia", "Liam", "Eva", "Silke")

#And their no. plants in the office (one oulier?)
No_plants_in_office <- c(0, 3, 0, 0, 2, 2, 4, 12)

#Merge data into one file
Data <- cbind(Some_limno_people, No_plants_in_office)
Data <- as.data.frame(Data)

#Make no. plants numeric
Data$No_plants_in_office <- as.numeric(Data$No_plants_in_office)


