library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Calculate your Body Mass Index (BMI)"),
  sidebarPanel(
    h3('Enter your details and click Calculate BMI'),
    numericInput('height','Enter your height in cm', 183, min=0,max=300,step=1),
    numericInput('weight', 'Enter your weight in kg', 75, min=0,max=300,step=1),
    actionButton('calculate', 'Calculate BMI')
  ),
  mainPanel(
    h3('Your Body Mass Index (BMI)'),
    p('Body mass index (BMI) is one method used to estimate your total amount of body fat. It is calculated by dividing your weight in kilograms by your height in metres squared (m2). For more information refer to the World Health Organisation BMI Classification or seek medical advice.'),
    h4('Your BMI:'),verbatimTextOutput("bmi"),
    h4('Your BMI result indicates that your weight falls within the range that is:'),verbatimTextOutput('bmiclass')
  )
))