library(dplyr)
library(datamations)

small_salary_sample <- small_salary %>%
  group_by(Degree) %>%
  sample_n(5) %>%
  ungroup()

res <- "small_salary_sample %>% group_by(Degree)" %>% datamation_sanddance()

res$x$specs %>%
  write(here::here("sandbox", "small_data", "small_data_specs.json"))
