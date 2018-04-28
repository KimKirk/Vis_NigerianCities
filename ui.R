

#import shiny package
library(shiny)

#create UI elements for dropdown menu and items, and barplot
ui <- fluidPage(titlePanel("Nigerian Cities by Population"),
                
                mainPanel(
                    selectInput("choice", "Choose your cities", nigerianCities$city, multiple = TRUE),
                    plotOutput("barplot")
                ))





