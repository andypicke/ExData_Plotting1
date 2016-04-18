ReadPowerDat <-function(){
    
    ### Function to load data for Course Project 1 of Coursera: Exploratory Data Analysis
    
    # Clear workspace
    rm(list=ls())
    
    # Set working directory
    setwd("/Users/Andy/DataSciCoursera/ExploratoryDataAnalysis/ExData_Plotting1/")
    
    ## Get data
    
    # Check if downloaded already, if not download now
    if (!file.exists("Edat.zip")) {
        url<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(url,"Edat.zip")
    } else {
        print("File already downloaded")
    }
    
    # Unzip the file
    unzip("Edat.zip")
    
    # Read the data into a data frame
    dat<-read.table("household_power_consumption.txt",header=TRUE,sep=";",as.is=TRUE,na.strings="?",colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))#,nrows=10)
    
    # Make a new date-time variable from Date and Time strings
    dat$dt<-as.POSIXlt(paste(dat$Date,dat$Time),format="%d/%m/%Y %H:%M:%S")
    
    # We only use data from the dates 2007-02-01 and 2007-02-02 ; subset now
    tmin<-strptime("2007-02-01",format="%Y-%m-%d")
    tmax<-strptime("2007-02-03",format="%Y-%m-%d")
    dat2<-subset(dat,dat$dt>=tmin & dat$dt<=tmax)
}