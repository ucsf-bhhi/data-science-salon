# Session: 2 Demo

# Package installation from CRAN

install.packages(c("ggplot2", "dplyr", "janitor", "remotes"))

# Install package from Github

remotes::install_github("ucsf-bhhi/bhhitools")

# Load libraries

library(dplyr)
library(ggplot2)

# Mathematical operations

x <- 2 + 2

x

x <- 2*3

y <- (1:4)*x


# Running base R function to generate an array of random numbers 
# that have a mean of 10 and SD of 2

?rnorm

rand_sample <- rnorm(100, mean = 10, sd = 2)

# Inspect data type

typeof(rand_sample)

# Quick preview of data's first 6 rows

head(iris)

str(iris)

# It's best practice to keep header/variables clean of period marks in the name
# Clean variable names with the clean_names function from the janitor package
# You can call a function directly w/o loading a library using "::"

iris_clean <- iris |>  
  janitor::clean_names()

# Check change

iris_clean |> 
  head()

## Evaluating data with glimpse()

iris |>  
  glimpse()




