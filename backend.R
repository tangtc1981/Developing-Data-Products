# Load required libraries
require(data.table)
library(dplyr)

#data source from https://www.capitalbikeshare.com/trip-history-data

# Read data from csv file downloaded from url above
dataset <- fread("./data/2011-Q1-cabi-trip-history-data.csv", header=TRUE,stringsAsFactors=F)

# Rename columns
setnames(dataset, "Start date", "Start_date")
setnames(dataset, "End date", "End_date")
setnames(dataset, "Start station", "Start_station")
setnames(dataset, "End station", "End_station")
setnames(dataset, "Bike#", "Bike_no")
setnames(dataset, "Member Type", "Member_type")

