install.packages("ggplot2", dependencies=TRUE)
install.packages("stringi")
ibrary("ggplot2")
qplot(DataSet1$FineDust,
      +       geom="histogram",
      +       binwidth = 0.5,
      +       main = "Histogram for FineDust")
