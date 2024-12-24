# bulk insert in SQL from a file

#install.packages("RODBC")

# module/s:
library(RODBC)

# SQL section:
server_name <- "server_name"
database_name <- "db_name"
table_name <- "table_name"

# connection string:
connection_string <- 
  paste0("driver={SQL Server};server=", server_name,
         ";database=", database_name, ";trusted_connection=yes;")
conn <- odbcDriverConnect(connection_string)

# load data from a .csv:
csv_file <- "C:\\Users\\file.csv"
data <- read.csv(csv_file)

# bulk insert df to sql table:
sqlSave(conn,
        data,
        tablename = table_name,
        append = TRUE,
        rownames = FALSE,
        fast = TRUE)

# close the connection with SQL server!
odbcClose(conn)
