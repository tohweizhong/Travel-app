
# Travel-app01
# setup.R

library(shiny)
library(rsconnect)

shinyapps::setAccountInfo(name='weiztoh',
                          token='9732F027F279B1021DA88CC4EFC72643',
                          secret='iisUH4fBD+sh8xGc/UcAuoqo5YMwxgO4QpsqpqZB')

deployApp(appName = "Travel-app01", account = "weiztoh")
