#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    library(plotly)
   
    output$ncount_2 <- renderPrint({
        ncount <- input$Test
        paste(ncount,"100",sep="_")
    })
    output$graph <- renderPlotly({

       if (input$Test == 'mpg') {
           
           plot_ly(mtcars, x= ~wt, y = ~mpg,type = "scatter", mode = "lines+markers", color = ~as.factor(cyl))
       }
       
        else {
            plot_ly(mtcars, x= ~wt, y = ~disp,type = "scatter", mode = "lines+markers", color = ~as.factor(cyl))  
        }
        
    })

})
