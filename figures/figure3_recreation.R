library(tidyverse)
binded_long_output <- read_csv("output/bined_long.csv")


figure3_recreation <- binded_long_output |>
  ggplot(
    mapping = aes(
      x = window_start,
      y = window_mean,
      group = Sample_ID,
      linetype = Sample_ID,
    )
  ) +
  geom_line() +
  theme_linedraw() +
  theme_bw() +
  theme(legend.position = "right") +
  theme(strip.placement = "outside") +
  facet_grid(vars(binded_long_output$ions), scales = "free", switch = "y") +
  labs(
    x = "Ions",
    y = "Years",
    title = "Hurricane Hugo Effects on Stream Chemistry in Bisley, Puerto Rico"
  )

figure3_recreation
