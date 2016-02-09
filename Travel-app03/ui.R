
library(shiny)
library(leaflet)

shinyUI(fluidPage(
    
    tags$head(tags$meta("name" = "apple-mobile-web-app-capable", "content" = "yes")),
    
    # Application title
    titlePanel("YourSingapore Guide"),
    
    tags$h5("These are popular places visited by your peer tourists (of similiar background and trip nature)"),
    
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            checkboxGroupInput("_loc",
                               "Select the places you would like to visit during the trip",
                               width = NULL,
                               choices = c("Gardens By The Bay" = "Gardens By The Bay",
                                           "Singapore Zoo" = "Singapore Zoo",
                                           "Marina Bay Sands" = "Marina Bay Sands",
                                           "Clarke Quay" = "Clarke Quay",
                                           "Vivo City" = "Vivo City",
                                           "Haji Lane" = "Haji Lane",
                                           "River Safari" = "River Safari",
                                           "Orchard Road" = "Orchard Road"),
                               selected = "Gardens By The Bay")
        ),
        
        mainPanel(
            leafletOutput("showMap"),
            uiOutput("ViewItinReco"),
            
            tags$br(),
            uiOutput("DontLikeReco"),
            uiOutput("CreateOwn")
        )
    )
))
