library(ggplot2)

source("backend.R")

fluidPage(
  
  titlePanel("Capital Bike Share Trip History Year 2011 - (Q1)"),
  
  sidebarPanel(
    
    checkboxInput('Member_Type', 'Registered Member Only')
  ),
  
  mainPanel(plotOutput('plot'))
)