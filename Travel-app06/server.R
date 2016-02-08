
# Travel-app06
# server.R

library(shiny)

shinyServer(function(input, output) {
    
    # show map
    output$showMap <- renderLeaflet({
        
        m <- leaflet() %>%
            addTiles() %>%
            addMarkers(lng = 103.8306849, lat =  1.30608, popup = "Wild Honey at Scotts Square")
        print(m)
    })
    
    # Book Now
    output$BookNow <- reactive({
        htmlCode <- '<a href = https://weiztoh.shinyapps.io/Travel-app06><img border="0" src = "https://raw.githubusercontent.com/tohweizhong/Travel-app/master/images/book%20now_button.png" alt="HTML tutorial" style="width:140px;height:50px"></a>'
        htmlCode
    })
    
    # Itinerary review
    output$ItinReview <- reactive({
        # image needs to be online
        htmlCode <- '<a href = https://tohweizhong.shinyapps.io/Travel-app07><img border="0" src = "https://raw.githubusercontent.com/tohweizhong/Travel-app/master/images/next%20button.png" alt="HTML tutorial" style="width:120px;height:50px"></a>'
        htmlCode
    })

})
