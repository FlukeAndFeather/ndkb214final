library(tidyverse)

# Data sets
BQ1 <- read_csv("data/QuebradaCuenca1-Bisley.csv")

BQ2 <- read_csv("data/QuebradaCuenca2-Bisley.csv")

BQ3 <- read_csv("data/QuebradaCuenca3-Bisley.csv")

LTER <- read_csv("data/LUQ LTER MDLs.csv")

Rio_Mam <- read_csv("data/RioMameyesPuenteRoto.csv")

# Moving average function
source("R/moving-average.R")

# Data sets filtered and columns selected
bq1_filtered <- BQ1 |> 
select("Sample_ID","Sample_Date", "Ca", "Mg", "K", "NH4-N", "NO3-N") |> 
filter(Sample_Date >= "1988-01-01" & Sample_Date <= "1994-12-31")

bq1_filtered

bq2_filtered <- BQ2 |> 
select("Sample_ID", "Sample_Date", "Ca", "Mg", "K", "NH4-N", "NO3-N") |> 
filter(Sample_Date >= "1988-01-01" & Sample_Date <= "1994-12-31")

bq2_filtered

bq3_filtered <- BQ3 |> 
  select("Sample_ID", "Sample_Date", "Ca", "Mg", "K", "NH4-N", "NO3-N") |> 
filter(Sample_Date >= "1988-01-01" & Sample_Date <= "1994-12-31")

bq3_filtered

# Moving average function applied to filtered data sets (sites)

bq1_movingaverage <- moving_average(bq1_filtered, 9)
bq1_movingaverage

bq2_movingaverage <- moving_average(bq2_filtered, 9)
bq2_movingaverage

bq3_movingaverage <- moving_average(bq3_filtered, 9)
bq3_movingaverage

Rio_Mam_moving_average <- moving_average(Rio_Mam, 9)
Rio_Mam_moving_average
