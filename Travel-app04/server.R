
# Travel-app04
# server.R

library(shiny)

shinyServer(function(input, output) {

    output$selectItin <- renderUI({
        selectizeInput("_whichItin", "",
                       choices = c("Itinerary 1" = "Itinerary 1",
                                   "Itinerary 2" = "Itinerary 2"))
    })

    output$selectDay <- renderUI({
        selectizeInput("_whichDay", "",
                       choices = c("Day 1" = "Day 1",
                                   "Day 2" = "Day 2",
                                   "Day 3" = "Day 3"))
    })
    
    output$selectLocations <- renderUI({
        
        if(input$"_whichDay" == "Day 1"){
            choices <- c("Kampong Glam", "Clarke Quay", "Orchard Road", "Lau Pa Sat")
        }
        else if(input$"_whichDay" == "Day 2"){
            choices <- c("Esplanade", "National Gallery Singapore", "Art Central", "Chinese Heritage Centre")
        }
        else if(input$"_whichDay" == "Day 3"){
            choices <- c("Singapore Flyer", "Science Centre", "Botanic Gardens")
        }
        
        
        checkboxGroupInput("_whichLocations", "", choices = choices)
    })
    
    # Join now button
    output$ViewFNB <- reactive({
        # image needs to be online
        htmlCode <- '<a href = https://weiztoh.shinyapps.io/Travel-app05><img border="0" src = "https://avatars3.githubusercontent.com/u/8409155?v=3&s=460" alt="HTML tutorial" style="width:100px;height:100px"></a>'
        htmlCode
    })
    
    # I do not like my recommendations
    output$DontLikeReco <- renderUI({
        checkboxInput("_dontlike", "I do not like my recommendations")
    })
    
    # Create own itinerary
    output$CreateOwn <- reactive({
        
        if(input$"_dontlike" == TRUE){
            htmlCode <- '<a href = https://weiztoh.shinyapps.io/Travel-app05><img border="0" src = "https://avatars3.githubusercontent.com/u/8409155?v=3&s=460" alt="HTML tutorial" style="width:100px;height:100px"></a>'
        }
        else if(input$"_dontlike" == FALSE){
            htmlCode <- ""
        }
        htmlCode
    })
    
})
