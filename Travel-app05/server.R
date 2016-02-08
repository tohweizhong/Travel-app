
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

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
        htmlCode <- '<a href = https://weiztoh.shinyapps.io/Travel-app06><img border="0" src = "https://avatars3.githubusercontent.com/u/8409155?v=3&s=460" alt="HTML tutorial" style="width:100px;height:100px"></a>'
        htmlCode
    })
    
})
