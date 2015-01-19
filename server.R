#This is the server.R code

library(shiny)

shinyServer(function(input, output) {
  
  output$plot <- renderPlot({
    
    z<-esoph[(esoph$agegp==input$agegp)&(esoph$ncontrols<input$ncontrols),]
    
    plot(z$ncontrols,z$ncases,xlab="Number of Controls",ylab="Number of Cases")
    abline(lm(z$ncases~z$ncontrols))
  })
  
})
