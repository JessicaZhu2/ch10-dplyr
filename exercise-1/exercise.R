# Exercise 1: Data Frame Practice

# Install devtools package: allows installations from GitHub
install.packages('devtools')

# Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
library(fueleconomy)

# You should have have access to the `vehicles` data.frame
View(vehicles)

# Create a data.frame of vehicles from 1997
vehicles.1997 <- vehicles[vehicles$year == 1997,]

# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame
length(unique(vehicles.1997$year))==1

# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city
two.wheel.20.mgh <- vehicles[vehicle$drive == "2-Wheel Drive" & vehicle$cty > 20]

# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg?
worst.hwy <- two.wheel.20.mgh$id[two.wheel.20.mgh$hwy == min(two.wheel.20.mgh$hwy)]
  
# Write a function that takes a `year` and a `make` as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year
MakeYear <- function(my_year, my_make){
  vehicle <- filter(vehicles, make = my_make, year = my_year) %>% filter(hwy = max(hwy))
  return(vehicle)
}

# What was the most efficient honda model of 1995?
MakeYear('Honda', 1995)

