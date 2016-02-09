
# Travel-app04
# ui.R

library(shiny)

shinyUI(fluidPage(
    
    tags$head(tags$meta("name" = "apple-mobile-web-app-capable", "content" = "yes")),
    
    # Application title
    titlePanel("YourSingapore Guide"),
    
    tags$h5("These are the popular itineraries visited by your peer tourists in relation to your selected POI."),
    
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            uiOutput("selectItin"),
            uiOutput("selectDay")
        ),
        
        mainPanel(
            uiOutput("selectLocations"),
            uiOutput("ViewFNB"),
            uiOutput("DontLikeReco"),
            uiOutput("CreateOwn")
        )
    )
))
