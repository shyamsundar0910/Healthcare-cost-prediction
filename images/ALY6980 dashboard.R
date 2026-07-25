shiny::runApp("/Users/shyamsundar/Desktop/capstone/final project/rshiny files")
shiny::runApp(
  "/Users/shyamsundar/Desktop/capstone/final project/rshiny files",
  port = 7777,
  launch.browser = TRUE
)
metrics_summary <- read.csv("/Users/shyamsundar/Desktop/capstone/final project/rshiny files/metrics_summary.csv")
print(metrics_summary)
library(shiny)

metrics_summary <- read.csv("/Users/shyamsundar/Desktop/capstone/final project/rshiny files/metrics_summary.csv")

ui <- fluidPage(
  h2("Test Metrics"),
  tableOutput("tbl")
)

server <- function(input, output, session) {
  output$tbl <- renderTable(metrics_summary)
}

shinyApp(ui, server)