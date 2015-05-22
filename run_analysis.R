
library(plyr)
library(RCurl)

url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

dirroot <- "./UCI HAR Dataset/"

curl_file <- function(url,localfile="tmp.zip" ) {
    if ( url.exists(url) ) {
        f = CFILE( localfile , mode="wb")
        curlPerform(URL=url, writedata = f@ref)
        close(f)
    }
    localfile 
}


if ( !file.exists(dirroot) ){
    zipfile <- curl_file( url, "datafile.zip" )
    unzip( zipfile  )
}


#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# @brief Loads a whole subdirectory.
#        - will read X_"name".txt. Select only the filtered mean and std lines
#        - will load from y_"name".txt the
#        - will load subject_"name".txt who performed the analysis.
#
# @return Returns a data frame corresponding to the subdirectory name that
#         contains only AVE and STD dev data, along with the subject name
#         and 
#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
load_subdirectory <- function ( dirroot="./UCI HAR Dataset/",name="test", features, indices, actlabels ) {
    
    xdata <- read.csv( paste(dirroot,name,"/X_",name,".txt",sep=""),sep="",header=FALSE)
    retdataframe <- xdata[,indices]


    # Name the data set values with the descriptive names
    # SEE REQUIREMENT 4
    names(retdataframe) <- sapply(X=features[indices,2],FUN=as.string )

    subject <- read.csv( paste(dirroot,name,"/subject_",name,".txt",sep=""),sep="",header=FALSE )
    retdataframe <- cbind(retdataframe, Subject=subject[,1] )
    activities <- read.csv( paste(dirroot,name,"/y_",name,".txt",sep=""), sep="",header=FALSE )

    # Name the activities from the actlabels
    # SEE REQUIREMENT 3
    activities <- actlabels[ activities$V1,"V2"]
    retdataframe <- cbind( retdataframe, Activity=activities )

    retdataframe <- cbind( retdataframe, Run=rep(c(name),times=dim(retdataframe)[1] ) )
    
    retdataframe
}



features <- read.csv(paste( dirroot,"features.txt",sep=""),header=FALSE,sep=" ")


#
# Only find the feature names that have "std" OR "mean" in them
# SEE REQUIREMENT 2
# 
std_and_mean_indices <- grep("(mean|std)",features[,2],perl=TRUE)   


# Save these names for later to perform an average based on each one
keepnames <- sapply(X=features[std_and_mean_indices,2],FUN=as.string )


actlabels <- read.csv(paste( dirroot,"activity_labels.txt",sep=""),header=FALSE,sep=" ")

totaldf <- load_subdirectory(name="test", features=features, indices=std_and_mean_indices, actlabels=actlabels )
tmp <- load_subdirectory(name="train", features=features, indices=std_and_mean_indices, actlabels=actlabels )

# Combine the two datasets
# SEE REQUIREMENT 1 
totaldf <- rbind(totaldf,tmp)


# Now lets construct a tidy version of this total dataset broken down
# by Activity and Subject. This drops the column for "test" / "train"
# SEE REQUIREMENT 5
#
tidydata <- ddply(totaldf,c("Activity","Subject"), numcolwise(mean) )


write.table(tidydata,file="tidydata.csv",sep=" ",row.name=FALSE )
