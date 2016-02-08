
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("YourSingapore Guide"),
  
  tabsetPanel(
      tabPanel("Day 1",
               tags$h3("Kampung Glam"),
               tags$hr(),
               tags$h5("[Select to add to itinerary]"),
               uiOutput("s111"),
               uiOutput("s112"),
               uiOutput("s113"),
               tags$hr(),
               tags$h3("Clarke Quay"),
               uiOutput("s121"),
               uiOutput("s122"),
               uiOutput("s123")),
      tabPanel("Day 2",
               tags$h3("Esplanade"),
               tags$hr(),
               tags$h5("[Select to add to itinerary]"),
               tags$hr(),
               tags$h3("National Gallery Singapore")),
      tabPanel("Day 3",
               tags$h3("Singapore Flyer"),
               tags$hr(),
               tags$h5("[Select to add to itinerary]"),
               tags$hr(),
               tags$h3("Science Centre"))
  ),
  
  uiOutput("AddToItin")
  
  
))
