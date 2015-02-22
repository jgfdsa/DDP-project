require('shiny')
require('lubridate')

shinyUI(fluidPage(
        titlePanel("My Shiny App - Developing Data Products - Time Calculations"),
        sidebarLayout(
                sidebarPanel(
                        h4("You are being asked to introduce your date of birth, a range of date that you would like to calculate the duration between them and/or a date that you would like to know which day of the week is.."),
                        br(),
                        br(),
                        dateInput("birth", label = h3("Enter your birth")),
                        br(),
                        
                        dateRangeInput("ranges", label = h3("Calculate duration between two dates")),
                        br(),
                        
                        dateInput("date", label = h3("What Day is this Date?")),
                        br(),
                        
                        img(src = "Time.jpg", height = 220, width = 260)

                ),       
                mainPanel(
                        h1("Introducing this app"),
                        p("This app is part of the Coursera course ",
                          em("Developing Data Products."),
                          "It is a very simple app that it's only intention is to Demonstrate what we have learned during the course."),
                        p("You are ask to introduce your date of birth, a range of date that you would like to calculate the duration between them and/or a date that you wuld like to know which day of the week is."),
                        br(),
                        h1("Special Age Calculator"),
                        p(strong("Please enter your date of birth"),"on the sidebarPanel on the left of this instruction."),
                        textOutput("birth"),
                        textOutput("dbirth"),
                        textOutput("dwbirth"),
                        br(),
                        h1("Calculate duration between two dates"),
                        p("This calculates the duration, counting the day count and the number of days, months and years between two dates"),
                        textOutput("ranges"),
                        textOutput("calcranges"),
                        br(),
                        h1("Weekday Calculator – What Day is this Date?"),
                        p("Want to know which day of the week you were born? Need to find out if the day you met your significant other was a Monday or Tuesday? Have to settle that argument with a friend about when you graduated? Or do you just want to find out if your favorite holiday will fall on a weekend next year?
Just enter the date and find out the day of the week and other fun facts about your specific date."),
                        textOutput("date")
                        
                        
                )
                
)))