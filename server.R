

#import shiny package
library(shiny)

#create output that responds to input changes from UI for barplot
server <- function(input, output) { 
    
    output$barplot <- renderPlot({

        barplot(nigerianCities$population[nigerianCities$city %in% input$choice], col = rainbow(20),
           names.arg = nigerianCities[nigerianCities$city %in% input$choice,1],
           ylab = "Population",  main = "Comparison of the Population of Nigerian Cities", space = 0, xlim= c(0, 7), ylim = c(0,max(nigerianCities$population)))

        })

    
}
