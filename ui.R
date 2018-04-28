

#import shiny package
require(shiny)

nigerianCities <- data.frame(city = c("Abuja","Benin City", "Enugu", "Ibadan","Kano", "Lagos", "Port Harcourt"),
                             population = c(776298, 1495800, 3267837, 3034200, 9383682, 9013534, 1865000), 
                             latitude = c(9.066667, 6.333333, 6.452667, 7.396389, 12, 6.455027, 4.824167), 
                             longitude = c(7.483333, 5.622222, 7.510333, 3.916667, 8.516667, 3.384082, 7.033611) 
)

#create UI elements for dropdown menu and items, and barplot
ui <- fluidPage(titlePanel("Nigerian Cities by Population"),
                
                mainPanel(
                    textOutput("documentation"),
                    selectInput("choice", "Choose your cities", nigerianCities$city, multiple = TRUE),
                    plotOutput("barplot")
                ))





