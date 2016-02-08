
# Travel-app06
# ui.R

library(shiny)
library(leaflet)

shinyUI(fluidPage(

  # Application title
  titlePanel("YourSingapore Guide"),
  
  tags$h4("Wild Honey Scotts Square"),
  tags$h6("Sumptuous all-day breakfast"),
  leafletOutput("showMap"),
  
  tags$h6("Wild Honey at Scotts Square"),
  tags$h6("Operating Hours: Sun - Thu: 9am to 9pm"),
  uiOutput("BookNow"),
  
  tags$hr(),
  
  # Offers
  tags$h4("Offers"),
  tags$h5("1. Complimentary dine-in voucher with min. spend of $50."),
  tags$h5("2. 50% off Beach Bikes Pizza"),
  
  tags$hr(),
  
 # Reviews
 tags$h4("Reviews"),
 tags$h5("1. This is one of the very few places in Singapore where you can get all day breakfast! Taking a look at the menu will make you feel that you are traveling around the world with all the different kind of breakfast that is available for your pleasure consumption. One of my favorite breakfast item will be the English breakfast. The eggs are cooked just nice and the bacon crispy yet not oily! go try out other breakfast available I can promise you that you will never regret it"), 
 tags$h5("2. Wild Honey has always been my favorite spot to enjoy quality all-day breakfast / brunch, in cosy poshy settings. Hence, for tonight's Christmas get-together dinner with the dear *J and *L, we selected this place as The Venue. The outlet at Scotts Square is newer, set in dim, intimate lightings with a blend of vintage-modernistic furnishings to give it a plush but homely feel. The balcony alfreco dining area looked inviting as well, but that evening's searing weather gave us pause to venture. We stayed indoors in the cool comfort of couches, electrical lights made to resemble candlelights and soft music in the background - the perfect catching-up place as well."),
  
  uiOutput("ItinReview")
))
