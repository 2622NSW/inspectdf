# inspectdf
# https://github.com/alastairrushworth/inspectdf
library(devtools)
devtools::install_github("alastairrushworth/inspectdf")
library(inspectdf)
df <- read_csv("CleanSeason.csv")
library(dplyr)
df1 <- df %>% sample_n(100)
df2 <- df %>% sample_n(100) %>% select(-1, -2)
inspect_types(df, show_plot = TRUE)
inspect_types(df1, df2, show_plot = TRUE)
inspect_mem(df, show_plot = TRUE)
inspect_mem(df1, df2, show_plot = TRUE)
inspect_na(df, show_plot = TRUE)
inspect_na(df1, df2, show_plot = TRUE)
inspect_cor(df, show_plot = TRUE)
inspect_cor(df1, df2, show_plot = TRUE)
inspect_imb(df, show_plot = TRUE)
inspect_num(df, show_plot = TRUE, breaks = 10)
inspect_num(df1, df2, show_plot = TRUE)
inspect_num(df)$hist$FD
inspect_cat(df, show_plot = TRUE)
inspect_cat(df)$levels$Date
inspect_cat(df1, df2, show_plot = TRUE)