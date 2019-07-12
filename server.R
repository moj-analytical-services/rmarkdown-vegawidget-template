#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(vegawidget)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  
  spec <- list(
      `$schema` = vegawidget::vega_schema(), # specifies Vega-Lite
      description = "An mtcars example.",
      data = list(values = mtcars),
      mark = "point",
      encoding = list(
        x = list(field = "wt", type = "quantitative"),
        y = list(field = "mpg", type = "quantitative"),
        color = list(field = "cyl", type = "nominal")
      )
    ) 
    output$vgoutput  <- vegawidget::renderVegawidget(vegawidget::as_vegaspec(spec))

})
