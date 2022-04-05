# Import stp table

library(cdaconfig)
library(dplyr)
library(dbplyr)
library(DBI)

# Connection aux datas ----

stp_table <- connection_to_DB("DI_PRICING")

data_in <- tbl(stp_table, 'QRY331_STP')

# Collecter les datas ----

full_data <- data_in %>% collect()