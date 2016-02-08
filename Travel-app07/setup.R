
# Travel-app07
# setup.R

library(shiny)
library(rsconnect)

shinyapps::setAccountInfo(name='tohweizhong',
                          token='DF9614818065B5DAAF22AE7D78C38089',
                          secret='uSZ0rCRf6/gKj2ltBXrGENb4kn0y8Cw2bZaA87zk')

deployApp(appName = "Travel-app07", account = "tohweizhong")
