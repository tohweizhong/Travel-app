
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
    
    # Application title
    titlePanel("YourSingapore Guide"),
    
    tags$h5("Tell us more about your trip!"),
    
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            uiOutput("selectNumTimes"),
            uiOutput("selectDuration"),
            uiOutput("selectPurpose"),
            uiOutput("selectCompanion"),
            uiOutput("selectAccoms")
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            uiOutput("ViewReco")
        )
    )
))