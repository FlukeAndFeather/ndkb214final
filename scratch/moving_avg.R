library(tidyverse)
qc_1_draft <- read_csv("data/QuebradaCuenca1-Bisley.csv")

qc_1_tibble<- tibble(
    window_start = seq(
        qc_1_draft$Sample_Date[1],
        qc_1_draft$Sample_Date[nrow(qc_1_draft)],
        by = "63 days",
    ),
    Ca_mgl = NA,
    ) 

qc_1_tibble
for(i in 1:nrow(qc_1_tibble)){
  w1 <- qc_1_tibble$window_start[i]
  w2 <- w1 + days(63)
  ca_window <- qc_1_draft$Ca[qc_1_draft$Sample_Date >= w1 & qc_1_draft$Sample_Date < w2]
  print(ca_window)
  ca_mean <- mean(ca_window, na.rm = TRUE)
  qc_1_tibble$Ca_mgl[i] <- ca_mean
}
qc_1_tibble

qc_ca <- qc_1_tibble |> 
  ggplot(
    mapping = aes(
        x = window_start,
        y = Ca_mgl
    )
  ) +
  geom_line() +
  xlab("Years") +
  ylab("Ca concentration (mg/l)")

qc_ca
