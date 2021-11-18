library(readr)
library(ggplot2)
library(stargazer)

simdata <- read_csv("C:/Users/adamk/Dropbox (MIT)/Current/PML_Good_coding_practices/PML_Good_coding_practices_example/data/simulated-data.csv")
reg=lm(y~x+1,data=simdata)
summary(reg)
#stargazer(reg, out = "C:/Users/adamk/Dropbox (MIT)/Current/PML_Good_coding_practices/PML_Good_coding_practices_example/report/tables/regression.tex")

#png("C:/Users/adamk/Dropbox (MIT)/Current/PML_Good_coding_practices/PML_Good_coding_practices_example/report/figures/regression.png")
plot(simdata$x, simdata$y)
lines(simdata$x, predict(reg), col="red")
#dev.off()

simdata$preds = predict(reg)
ggplot(simdata, aes(x = x, y = y)) + geom_point() + geom_line(aes(y = preds), color = "red")
#ggsave("C:/Users/adamk/Dropbox (MIT)/Current/PML_Good_coding_practices/PML_Good_coding_practices_example/report/figures/regression_ggplot.png")
