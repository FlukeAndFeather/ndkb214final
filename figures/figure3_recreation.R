library(tidyverse)
binded_long_output <- read_csv("output/bined_long.csv")
hurricane_date <- as.Date("1989-09-18")

figure3_recreation <- binded_long_output |>
  ggplot(
    mapping = aes(
      x = window_start,
      y = window_mean,
      group = Sample_ID,
      linetype = Sample_ID
    )
  ) +
  geom_line() +
  theme_linedraw() +
  theme(legend.position = "right") +
  facet_grid(vars(binded_long_output$ions), scales = "free", switch = "y") +
  ylab("Ions") +
  xlab("Years") +
  labs(title = "Hurricane Hugo Effects on Stream Chemistry in Bisley, Puerto Rico", linetype = "") 
   

figure3_recreation
