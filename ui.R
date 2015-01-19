#This is the ui code

library(shiny)

shinyUI(fluidPage(
  
  # Title
  titlePanel("Smoking Alcohol and Esophageal cancer"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("agegp","Age Group:",levels(esoph$agegp)),
      selectInput("alcgp","Alcohol Group:",levels(esoph$alcgp)),
      selectInput("tobgp","Tobacco Group:",levels(esoph$tobgp))
    ),
  
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("plot")
    )
  )
))
