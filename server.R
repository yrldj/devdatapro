
library(shiny)
shinyServer(
        function(input,output){
                output$newhist<-renderPlot({
                        n<-input$n
                        set.seed(7645)
                        a<-rexp(40,0.2)
                        mns = NULL
                        for (i in 1 : n) mns = c(mns, mean(rexp(40,0.2)))
                        par(mfrow=c(1,2),cex.main=1)
                        hist(a,main="Exponential distribution",xlab="",col="orange",border="orange",ylim=c(0,0.25),freq=F)
                        text(10,0.25,paste("lamda=0.2"))
                        text(9,0.23,paste("sample size=40"))
                  
                        hist(mns,main="Distribution of the means of 
N exponential distribution",xlab="",col="lightblue",border="lightblue",xlim=c(2,8),ylim=c(0,1),cex.axisb=0.9,freq=F)
                        lines(density(mns), col="blue", lwd=1.5)
                        text(7,1,paste("lamda=0.2"))
                        text(7,0.93,paste("N=",n))
                })
        })
