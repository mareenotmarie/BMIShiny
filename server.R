library(shiny)

calcBMI <- function(height, weight) weight / (height/100)^2
bmiclass <- function(bmi) {
  if(bmi < 18.5) "Underweight"
  else if(bmi < 25) "Acceptable"
  else if(bmi < 30) "Overweight"
  else "Obese"
}
shinyServer(
  function(input, output) {
    output$bmi <- renderText({calcBMI(input$height,input$weight)})
    output$bmiclass <- renderText({bmiclass(calcBMI(input$height,input$weight))})
  }
)