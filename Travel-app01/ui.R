
# Travel-app01
# ui.R

library(shiny)

shinyUI(fluidPage(
    
    tags$head(tags$meta("name" = "apple-mobile-web-app-capable", "content" = "yes")),
    
    # Application title
    titlePanel("YourSingapore Guide",
               tags$head(tags$link(rel="icon",type="image/png",href="icon.png",sizes="64x64"),
                         tags$title("YourSG"))),
    
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
        
        mainPanel(
            uiOutput("JoinNow")
        )
    )
))
