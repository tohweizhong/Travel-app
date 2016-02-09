
# Travel-app01
# server.R

library(shiny)

shinyServer(function(input, output) {

    output$selectNatl <- renderUI({
        selectizeInput("_natl", "Select your nationality:",
                       c("Chinese" = "Chinese",
                         "Indonesian" = "Indonesian"))
    })
    
    output$selectAge <- renderUI({
        selectizeInput("_age", "Select your age group:",
                       c("<35yrs", "35-64yrs", ">64yrs"))
    })
    
    output$selectGender <- renderUI({
        selectizeInput("_gender", "Select your gender:", c("M", "F"))
    })
    
    output$selectMartialStatus <- renderUI({
        selectizeInput("_martialstatus", "Select your martial status:",
                       c("Single", "Married", "Divorced", "Widowed"))
    })
    
    # Join now button
    output$JoinNow <- reactive({
        # image needs to be online
        htmlCode <- '<a href = https://weiztoh.shinyapps.io/Travel-app02><img border="0" src = "https://raw.githubusercontent.com/tohweizhong/Travel-app/master/images/next%20button.png" target="_top" style="width:100px;height:50px"></a>'
        htmlCode
    })

})
