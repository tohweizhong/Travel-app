
# Travel-app07
# ui.R

library(shiny)

shinyUI(fluidPage(
    
    tags$head(tags$meta("name" = "apple-mobile-web-app-capable", "content" = "yes")),
    
    # Application title
    titlePanel("YourSingapore Guide"),
    
    sliderInput("_reviewTrip", label = h4("Rate your trip experience"), min = 0, 
                max = 5, value = 3),
    
    tabsetPanel(
        tabPanel("Day 1",
                 sliderInput("_reviewKampungGlam", label = h4("Kampung Glam"), min = 0, 
                             max = 5, value = 3),
                 sliderInput("_reviewDoPong", label = h4("Do Pong Columbial Cafe"), min = 0, 
                             max = 5, value = 3),
                 sliderInput("_reviewVictoryMurtabak", label = h4("Victory Murtabak"), min = 0, 
                             max = 5, value = 3),
                 tags$hr(),
                 sliderInput("_reviewClarkeQuay", label = h4("Clarke Quay"), min = 0, 
                             max = 5, value = 3),
                 sliderInput("_reviewHaiDiLao", label = h4("Hai Di Lao"), min = 0, 
                             max = 5, value = 3),
                 sliderInput("_reviewFoodForThought", label = h4("Food For Thought"), min = 0, 
                             max = 5, value = 3),
                 textInput("comments", label = h4("Any comments?"), value = "")),
        tabPanel("Day 2"),
        tabPanel("Day 3")
    )
    
))
