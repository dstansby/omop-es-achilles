#' Generate SQL query for running Achilles
library(Achilles)
library(DatabaseConnector)

conn_details <- DatabaseConnector::createConnectionDetails(
  dbms = "duckdb", server = ":memory:"
)

Achilles::achilles(
  conn_details,
  cdmDatabaseSchema = "dbo",
  resultsDatabaseSchema = "dbo",
  createTable = TRUE,
  smallCellCount = 10,
  cdmVersion = "5.4",
  sqlOnly = TRUE
)
