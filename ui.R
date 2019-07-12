#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(vegawidget)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Render vega lite in a shiny app"),

  

    # Show a plot of the generated distribution
    mainPanel(
       vegawidget::vegawidgetOutput("vgoutput")
    )
  
))
