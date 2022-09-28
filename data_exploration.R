library(readxl)
library(tidyverse)
library(Hmisc)


# loading in 2015
df_2015 <- read_xlsx("data/2015.xlsx")

# basic structure
dim(df_2015)
describe(df_2015)
