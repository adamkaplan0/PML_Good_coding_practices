# Libraries and setup #######
#
library(here)
library(readr)
library(stargazer)
library(ggplot2)
# Let `here` know what file this is using RELATIVE paths
here::i_am("analysis/analysis.R")


# Analysis ##################
#
# Can use here to access data using RELATIVE paths
data <- readr::read_csv(here("data/simulated-data.csv"))
# Run regression
regression <- lm(y ~ x + 1, data = data)


# Outputs ###################
#
## Save table ###############
summary(regression)
stargazer::stargazer(regression, out = here("report/tables/regression.tex"))


## Plot results #############
### Base R version ##########
png(here("report/figures/regression.png"))
plot(data$x, data$y)
lines(data$x, predict(regression), col = "red")
dev.off()

### GGplot version ##########
plotting_data <- data
plotting_data$predictions <- predict(regression)
ggplot2::ggplot(plotting_data, aes(x = x, y = y)) +
  geom_point() +
  geom_line(aes(y = predictions), color = "red")
ggplot2::ggsave(here("report/figures/regression_ggplot.png"))
