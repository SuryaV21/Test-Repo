---
title: "Developing Data Products Week 4 Assignment"
author: "Santosh Vinnakota"
date: "06/08/2019"
output:
  ioslides_presentation: default
  slidy_presentation: default
---



## Overview


This is an RStudio shiny application developed as a part of week 4 project in the Developing Data Products course in Coursera Data Science Specialization track. The application is dynamic line chart based on the selection

The project includes:

Radio button 



## Application Contains

Form of Input used: Radio Button

Reactive output Line chart displayed based on the selections

The server.R and ui.R codes are posted on github at:https://github.com/SuryaV21/Test-Repo/tree/gh-pages/Week_4_Project

This app is hosted at: https://svinnakota.shinyapps.io/week_4/

## Shiny Code

library(shiny)


shinyUI(fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),
    
    radioButtons('Test', 'choose selection', choices = c('mpg','disp'), selected = 'mpg',
                 inline = FALSE, width = NULL, choiceNames = NULL,
                 choiceValues = NULL)
    ,    verbatimTextOutput("ncount_2")
    ,plotlyOutput("graph")
    
))

library(shiny)


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




## output


```
## Loading required package: ggplot2
```

```
## 
## Attaching package: 'plotly'
```

```
## The following object is masked from 'package:ggplot2':
## 
##     last_plot
```

```
## The following object is masked from 'package:stats':
## 
##     filter
```

```
## The following object is masked from 'package:graphics':
## 
##     layout
```

<!--html_preserve--><div id="htmlwidget-d8778b439fac5e962aa0" style="width:720px;height:432px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-d8778b439fac5e962aa0">{"x":{"visdat":{"2d183e78666f":["function () ","plotlyVisDat"]},"cur_data":"2d183e78666f","attrs":{"2d183e78666f":{"x":{},"y":{},"mode":"lines+markers","color":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"scatter"}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"xaxis":{"domain":[0,1],"automargin":true,"title":"wt"},"yaxis":{"domain":[0,1],"automargin":true,"title":"mpg"},"hovermode":"closest","showlegend":true},"source":"A","config":{"showSendToCloud":false},"data":[{"x":[2.32,3.19,3.15,2.2,1.615,1.835,2.465,1.935,2.14,1.513,2.78],"y":[22.8,24.4,22.8,32.4,30.4,33.9,21.5,27.3,26,30.4,21.4],"mode":"lines+markers","type":"scatter","name":"4","marker":{"color":"rgba(102,194,165,1)","line":{"color":"rgba(102,194,165,1)"}},"textfont":{"color":"rgba(102,194,165,1)"},"error_y":{"color":"rgba(102,194,165,1)"},"error_x":{"color":"rgba(102,194,165,1)"},"line":{"color":"rgba(102,194,165,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":[2.62,2.875,3.215,3.46,3.44,3.44,2.77],"y":[21,21,21.4,18.1,19.2,17.8,19.7],"mode":"lines+markers","type":"scatter","name":"6","marker":{"color":"rgba(252,141,98,1)","line":{"color":"rgba(252,141,98,1)"}},"textfont":{"color":"rgba(252,141,98,1)"},"error_y":{"color":"rgba(252,141,98,1)"},"error_x":{"color":"rgba(252,141,98,1)"},"line":{"color":"rgba(252,141,98,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":[3.44,3.57,4.07,3.73,3.78,5.25,5.424,5.345,3.52,3.435,3.84,3.845,3.17,3.57],"y":[18.7,14.3,16.4,17.3,15.2,10.4,10.4,14.7,15.5,15.2,13.3,19.2,15.8,15],"mode":"lines+markers","type":"scatter","name":"8","marker":{"color":"rgba(141,160,203,1)","line":{"color":"rgba(141,160,203,1)"}},"textfont":{"color":"rgba(141,160,203,1)"},"error_y":{"color":"rgba(141,160,203,1)"},"error_x":{"color":"rgba(141,160,203,1)"},"line":{"color":"rgba(141,160,203,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->



