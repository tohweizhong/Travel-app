
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
        htmlCode <- '<a href = https://weiztoh.shinyapps.io/Travel-app04><img border="0" src = "https://avatars3.githubusercontent.com/u/8409155?v=3&s=460" alt="HTML tutorial" style="width:100px;height:100px"></a>'
        htmlCode
    })
})
