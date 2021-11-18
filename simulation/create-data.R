# Libraries and setup #######
#
library(here)
library(readr)
# Let `here` know what file this is using RELATIVE paths
here::i_am("simulation/create-data.R")


# Generate simple data ######
#
number_of_samples <- 1000
x <- rnorm(number_of_samples, 0, 1)
# Beta = [1, 2]^T
y <- 1 + 2 * x + rnorm(number_of_samples, 0, 1)
data <- data.frame(x = x, y = y)
# Save the data using RELATIVE paths
readr::write_csv(data, here("data/simulated-data.csv"))
