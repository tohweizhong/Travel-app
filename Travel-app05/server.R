
# Travel-app05
# server.R

library(shiny)

shinyServer(function(input, output){
    
    output$s111 <- renderUI({
        checkboxInput("_oneone", "Dong Po Colonial Cafe")
    })
    output$s112 <- renderUI({
        checkboxInput("_onetwo", "Victory Murtabak")
    })
    output$s113 <- renderUI({
        checkboxInput("_onethree", "Islamic Restaurant Biryani")
    })
    output$s121 <- renderUI({
        checkboxInput("_oneone", "Hai Di Lao")
    })
    output$s122 <- renderUI({
        checkboxInput("_oneone", "Wild Honey at Scotts Square")
    })
    output$s123 <- renderUI({
        checkboxInput("_oneone", "Food For Thought")
    })
#     output$s211<- renderUI({
#         checkboxInput("_oneone", "Dong Po Colonial Cafe")
#     })
#     output$selectDayThreeFoodTwo <- renderUI({
#         checkboxInput("_oneone", "Dong Po Colonial Cafe")
#     })
#     output$selectDayThreeFoodThree <- renderUI({
#         checkboxInput("_oneone", "Dong Po Colonial Cafe")
#     })
    
    # Add to itinerary
    output$AddToItin <- reactive({
        htmlCode <- '<a href = https://tohweizhong.shinyapps.io/Travel-app06><img border="0" src = "https://raw.githubusercontent.com/tohweizhong/Travel-app/master/images/Add%20To%20My%20Itinerary_button.png" alt="HTML tutorial" style="width:140px;height:50px"></a>'
        htmlCode
    })
    
})
