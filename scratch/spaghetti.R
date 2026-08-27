library(tidyverse)
qc1_draft <- read_csv("data/QuebradaCuenca1-Bisley.csv")

source("R/moving-average.R")
ma_function<- moving_average(qc1_draft, 9)
ma_function

# qc1_filtered <- qc1_draft |> 
# select("Sample_Date", "Ca") |> 
# filter(Sample_Date >= "1988-01-01" & Sample_Date <= "1994-12-31")

# qc_1_filtered_spaghetti <- qc1_draft |> 
# select("Sample_Date", "Ca") |> 
# filter(Sample_Date >= "1988-01-01" & Sample_Date <= "1994-12-31")

# qc_1_filtered_spaghetti

qc_1_Ca <- qc_1_filtered_spaghetti |> 
  ggplot(
    mapping = aes(
        x = Sample_Date,
        y = Ca
    )
  ) +
  geom_line()

qc_1_Ca



# Use This Code ----------------------------------------------------------

# qc1_filtered <- qc1_draft |> 
  # select("Sample_Date", "Ca") |> 
   # filter(Sample_Date >= "1988-01-01" & Sample_Date <= "1994-12-31")

# bq1_Ca<- tibble(
    # window_start = seq(
        # qc1_filtered$Sample_Date[1],
        # qc1_filtered$Sample_Date[nrow(qc1_filtered)],
        #by = "9 weeks",
    #),
    #Ca_mgl = NA,
    #) 

#bq1_Ca
#for(i in 1:nrow(bq1_Ca)){
 # w1 <- bq1_Ca$window_start[i]
 # w2 <- w1 + weeks(9)
 # ca_window <- qc1_filtered$Ca_mgl[bq1_Ca$Sample_Date >= w1 & qc1_filtered$Sample_Date < w2]
 # ca_mean <- mean(ca_window, na.rm = TRUE)
 # bq1_Ca$Ca_mgl[i] <- ca_mean
#}

#bq1_graph_ca <- bq1_Ca |> 
 # ggplot(
   # mapping = aes(
      #  x = window_start,
      #  y = Ca_mgl
    # )
  # ) +
  #geom_line() +
  #xlab("Years") +
  #ylab("Ca concentration (mg/l)")

# bq1_graph_ca

