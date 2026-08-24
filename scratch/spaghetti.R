library(tidyverse)
qc_1_draft <- read_csv("data/QuebradaCuenca1-Bisley.csv")

# Make a blank data table 1988-1994
# Get rid of colums I do not need: only want "date" and "Ca"

qc_1_filtered <- qc_1_draft |> 
  select("Sample_Date", "Ca") |> 
  filter(Sample_Date >= "1988-01-01" & Sample_Date <= "1994-12-31")

qc_1_filtered

qc_1_Ca <- qc_1_filtered |> 
  ggplot(
    mapping = aes(
        x = Sample_Date,
        y = Ca
    )
  ) +
  geom_line()

qc_1_Ca


