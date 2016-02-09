
# Travel-app05
# ui.R

library(shiny)

shinyUI(fluidPage(
    
    tags$head(tags$meta("name" = "apple-mobile-web-app-capable", "content" = "yes")),
    
    # Application title
    titlePanel("YourSingapore Guide"),
    
    tabsetPanel(
        tabPanel("Day 1",
                 tags$h3("Kampung Glam"),
                 
                 tags$hr(),
                 
                 tags$h5("[Select to add to itinerary]"),
                 
                 uiOutput("s111"),
                 tags$h6("Traditional cakes to go with coffee"),
                 tags$h6("Rating: 4/5"),
                 actionButton("_promo_s111", "View promotion"),
                 
                 uiOutput("s112"),
                 tags$h6("103 years and still going strong"),
                 tags$h6("Rating: 5/5"),
                 
                 uiOutput("s113"),
                 tags$h6("Famous for its dum biryani"),
                 tags$hr(),
                 tags$h3("Clarke Quay"),
                 
                 uiOutput("s121"),
                 tags$h6("Sichuan steamboat from Shanghai"),
                 tags$h6("Rating: 4.5/5"),
                 actionButton("_promo_s121", "View promotion"),
                 
                 uiOutput("s122"),
                 tags$h6("Sumptuous all-day breakfast"),
                 tags$h6("Rating: 4/5"),
                 actionButton("_promo_s122", "View promotion"),
                 
                 uiOutput("s123"),
                 tags$h6("Socially conscious cuisine"),
                 tags$h6("Rating: 3.5/5")),
        
        
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
