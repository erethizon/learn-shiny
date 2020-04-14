#lesson3 - using widgets

library(shiny)

# Define ui ----
ui<-fluidPage(
  titlePanel("censusVis"),
  sidebarLayout(
    sidebarPanel(
      #add help text
      helpText("Create deomgraphic maps with information from the 2010 US Census."),
    #add selectbox
      selectInput(
        "select", "Choose a variable to display",
        choices = list(
          "Percent White" = 1,
          "Percent Black" = 2,
          "Percent Hispanic" = 3,
          "Percent Asian" = 4),
        selected = 1),
    #add slider
      sliderInput(
        "slider", "Range of interest",
                min = 0,
                max = 100,
                value = c(0, 100)),
    ),
    mainPanel()
  )
)


# Define server logic ----
server <- function(input, output) {

}

# Run the app ----
shinyApp(ui = ui, server = server)