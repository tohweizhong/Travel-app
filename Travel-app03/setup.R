
# Travel-app03
# setup.R

library(shiny)
library(rsconnect)
library(plyr)

shinyapps::setAccountInfo(name='weiztoh',
                          token='9732F027F279B1021DA88CC4EFC72643',
                          secret='iisUH4fBD+sh8xGc/UcAuoqo5YMwxgO4QpsqpqZB')

deployApp(appName = "Travel-app03", account = "weiztoh")


# ====
# Test leaflet and coordinates

# df <- read.csv("C:/Users/weizhong/Documents/R/Travel-app/Travel-app03/latlng.txt")
# 
# for(i in seq(nrow(df))){
#     
#     m <- leaflet() %>%
#         addTiles() %>%
#         addMarkers(lng = df$lng[i], lat = df$lat[i], popup = df$loc[i])
#     print(m)
#     Sys.sleep(5)
# }