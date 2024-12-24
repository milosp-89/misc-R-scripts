##### fetching data from SQL

# install.packages("RODBC")

# module/s:
library(RODBC)

# function for connection:
fetch_data <- function (server_name, db_name, tbl_name) {
  connection_string <- paste0("driver={SQL Server};server=",
                              server_name,
                              ";database=",
                              db_name,
                              ";trusted_connection=yes;")
  
  conn <- odbcDriverConnect(connection_string)
  query <- paste("SELECT * FROM", tbl_name, sep = ' ')
  result <- sqlQuery(conn, query)
  return(result)
}

# call the function:
df = fetch_data("server_name", "db_name", "tbl_name")
head(View(df))
