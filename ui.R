#This is the ui code

library(shiny)

shinyUI(fluidPage(
  
  # Title
  titlePanel("Smoking Alcohol and Esophageal cancer"),
  
  helpText("In this shiny app, we are analyzing esophageal data. You can select",
           "an age group, as well as a maximum number of controls. Once you",
           "do, this app will return a plot showing the number of controls vs the",
           "number of cases of esophageal cancer. It also calculates the regression",
           "line based on the values you give it."),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("agegp","Age Group:",levels(esoph$agegp)),
      sliderInput("ncontrols","Number of Controls",
                  min=1,
                  max=60,
                  value=30)
    ),
  
    
    mainPanel(
      plotOutput("plot")
    )
  )
))
