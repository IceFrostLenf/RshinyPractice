#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("計算圓錐體的體積"),
    
    numericInput("r", label = h3("輸入圓錐體的半徑"), value = 1),
    
    numericInput("h", label = h3("輸入圓錐體的高"), value = 1),
    
    submitButton("apply"),
    
    hr(),
    
    verbatimTextOutput("value")
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$value <- renderPrint({ pi * input$r * input$r * input$h / 3})
}
# Run the application 
shinyApp(ui = ui, server = server)
