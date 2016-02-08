
# Travel-app02
# server.R

library(shiny)

shinyServer(function(input, output){
    
    output$selectNumTimes <- renderUI({
        selectizeInput("_numtimes", "How many times have you been to S'pore?",
                       choices = c("1" = "1",
                                   "2" = "2",
                                   "3" = "3",
                                   "4" = "4",
                                   "5" = "5",
                                   "More than 5" = "More than 5"))
    })
    
    output$selectDuration <- renderUI({
        selectizeInput("_duration", "How long would you be staying?",
                       choices = c("1 day" = "1 day",
                                   "2 days" = "2 days",
                                   "3 days" = "3 days",
                                   "4 days" = "4 days",
                                   "5 days" = "5 days",
                                   "More than 5 days" = "More than 5 days"),
                       selected = "3 days")
    })
    
    output$selectPurpose <- renderUI({
        selectizeInput("_purpose", "Purpose of visit?",
                       choices = c("Leisure" = "Leisure",
                                   "Work" = "Work",
                                   "Events" = "Events"))
    })
    
    output$selectCompanions <- renderUI({
        selectizeInput("_companions", "Travel Companions?",
                       choices = c("Colleagues" = "Colleagues",
                                   "Family" = "Family",
                                   "Friends" = "Friends",
                                   "Going solo" = "Going solo"))
    })
    
    output$selectAccoms <- renderUI({
        selectizeInput("_accoms", "Accomodations?",
                       choices = c("Hilton" = "Hilton",
                                   "Raffles" = "Raffles"))
    })
    
    # View recommendations
    output$ViewReco <- reactive({
        # image needs to be online
        htmlCode <- '<a href = https://weiztoh.shinyapps.io/Travel-app03><img border="0" src = "https://raw.githubusercontent.com/tohweizhong/Travel-app/master/images/View%20My%20Reco_button.png" alt="HTML tutorial" style="width:140px;height:50px"></a>'
        htmlCode
    })
    
    # ==============================

    values <- reactiveValues(i = 1)
    
    output$count <- renderText({
        paste0("i = ", values$i)
    })
    
    observe({
        input$increment
        isolate({
            values$i <- values$i + 1
        })
    })
    
    observe({
        input$decrement
        isolate(values$i <- values$i - 1)
    })
})
