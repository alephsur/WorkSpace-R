library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Hello Shiny!"),
  sidebarPanel(
    textInput(inputId = "text1",label ="input text1"),
    textInput(inputId = "text2",label ="input text2")
    ),
  mainPanel(
    p("Output text1"),
    textOutput("text1"),
    p("Output text2"),
    textOutput("text2"),
    p("Output text3"),
    textOutput("text3"),
    p("Output text4"),
    textOutput("Text 4"),
    p("Inside text, but non-reactive"),
    textOutput("Text 5")
    )
  ))

