library(tidyverse)
qc1_draft <- read_csv("data/QuebradaCuenca1-Bisley.csv")

qc1_filtered <- qc1_draft |> 
  select("Sample_Date", "Ca") |> 
  filter(Sample_Date >= "1988-01-01" & Sample_Date <= "1994-12-31")

qc_1_filtered_spaghetti <- qc1_draft |> 
  select("Sample_Date", "Ca") |> 
  filter(Sample_Date >= "1988-01-01" & Sample_Date <= "1994-12-31")

qc_1_filtered_spaghetti

qc_1_Ca <- qc_1_filtered_spaghetti |> 
  ggplot(
    mapping = aes(
        x = Sample_Date,
        y = Ca
    )
  ) +
  geom_line()

qc_1_Ca


