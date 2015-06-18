
shinyUI(pageWithSidebar(
        headerPanel("Choose"),
        sidebarPanel(
                sliderInput('n','Time of simulation',value=405,min=5,max=800,step=,50)
                ),
        mainPanel(
                tabsetPanel(
                        tabPanel("Plot",plotOutput('newhist')),
                        p("Documentation: This app presents a visualization of Central Limit Theorem by simulating exponential distribution in R. The plot in the left shows the distribution of an exponential variable with lambda = 0.2 and sample size=40. The plot in the right shows the distribution of the mean of N exponential distribution in which N is specified in the slider. The valid range of N in this app goes from 5 to 800. You can see that distribution in right looks far more Gaussian than the original exponential distribution(left) as time of simulation increasing.")
                       )
                
          
               
                 
        ))
)