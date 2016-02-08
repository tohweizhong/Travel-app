
# Travel-app04
# server.R

library(shiny)

shinyServer(function(input, output) {

    output$selectItin <- renderUI({
        selectizeInput("_whichItin", "",
                       choices = c("Itinerary 1" = "Itinerary 1",
                                   "Itinerary 2" = "Itinerary 2",
                                   "Itinerary 3" = "Itinerary 3"))
    })

    output$selectDay <- renderUI({
        selectizeInput("_whichDay", "",
                       choices = c("Day 1" = "Day 1",
                                   "Day 2" = "Day 2",
                                   "Day 3" = "Day 3"))
    })
})
