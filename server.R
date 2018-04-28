

#import shiny package
require(shiny)


#create output that responds to input changes from UI for barplot
server <- function(input, output) { 
    
    output$documentation <- renderText({paste("This visualisation shows the population for various Nigerian cities, using data taken from Wikipedia. Use the dropdown menu to choose one or more of the cities for which you wish to see population data. To remove a city from the barplot, use your cursor to click on the city name and press the Del or Backspace button; the graph will adjust to show only those cities chosen.")})
    
    output$barplot <- renderPlot({

        barplot(nigerianCities$population[nigerianCities$city %in% input$choice], col = rainbow(20),
           names.arg = nigerianCities[nigerianCities$city %in% input$choice,1],
           ylab = "Population",  main = "Comparison of the Population of Nigerian Cities", space = 0, xlim= c(0, 7), ylim = c(0,max(nigerianCities$population)))

        })

    
}
