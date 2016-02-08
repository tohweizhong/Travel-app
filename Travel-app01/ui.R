
# Travel-app01
# ui.R

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("YourSingapore Guide"),

  tags$h5("Let us be your guide to experience the best of Singapore."),
  tags$h5("Help us understand you."),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
        
        # Input credentials
        textInput("user", "Username", value = "", width = NULL),
        textInput("pw", "Password", value = "", width = NULL),
        
        # Dropdown boxes
        uiOutput("selectNatl"),
        uiOutput("selectAge"),
        uiOutput("selectGender"),
        uiOutput("selectMartialStatus")
    ),

    # Show a plot of the generated distribution
    mainPanel(
        uiOutput("JoinNow")
    )
  )
))
