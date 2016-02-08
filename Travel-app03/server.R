
library(shiny)

shinyServer(function(input, output){
    
    df <- read.csv("latlng.txt")
    
    output$showMap <- renderLeaflet({
        
        idx <- which(df$loc == input$"_loc")
        
        
        m <- leaflet() %>%
            addTiles() %>%
            addMarkers(lng = df$lng[idx], lat = df$lat[idx], popup = input$"_loc")
        print(m)
    })

    output$ViewItinReco <- reactive({
        # image needs to be online
        htmlCode <- '<a href = https://weiztoh.shinyapps.io/Travel-app04><img border="0" src = "https://raw.githubusercontent.com/tohweizhong/Travel-app/master/images/View%20My%20Itineraries%20Reco_button.png" alt="HTML tutorial" style="width:140px;height:50px"></a>'
        htmlCode
    })
    
    # I do not like my recommendations
    output$DontLikeReco <- renderUI({
        checkboxInput("_dontlike", "I do not like my recommendations")
    })
    
    # Create own itinerary
    output$CreateOwn <- reactive({
        
        if(input$"_dontlike" == TRUE){
            htmlCode <- '<a href = https://weiztoh.shinyapps.io/Travel-app05><img border="0" src = "https://raw.githubusercontent.com/tohweizhong/Travel-app/master/images/Create%20My%20Itinerary_button.png" alt="HTML tutorial" style="width:140px;height:50px"></a>'
        }
        else if(input$"_dontlike" == FALSE){
            htmlCode <- ""
        }
        htmlCode
    })
})
