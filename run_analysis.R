setwd("C:/R_Working/Data")

library(dplyr)

# Get the features
features <- read.table("features.txt"
                       , col.names = c('id', 'name')
                       )

# Get the activity labels 
activity.labels <- read.table('activity_labels.txt'
                              , col.names = c('activityid', 'name')
                              )

# Get the test data
set.X.test <- read.table("test/X_test.txt")
set.y.test <- read.table("test/y_test.txt")
subject.test <- read.table("test/subject_test.txt")

# Get the training data
set.X.train <- read.table("train/X_train.txt")
set.y.train <- read.table("train/y_train.txt")
subject.train <- read.table("train/subject_train.txt")

# Rename headings 
names(set.X.train) <- features$name
names(set.y.train) <- c('activity')
names(subject.train) <- c("subject")
names(set.X.test) <- features$name
names(set.y.test) <- c('activity')
names(subject.test) <- c("subject")

# Merge the training and test sets
data.X <- rbind(set.X.train
                , set.X.test
                )

data.y <- rbind(set.y.train
                , set.y.test
                )

data.subject <- rbind(subject.train
                      , subject.test
                      )

# Filter features to only mean and std measurements
data.X <- data.X[, grep('mean|std', features$name)]

# Convert activity labels to meaningful names
data.y$activity <- activity.labels[data.y$activity,]$name

# Merge partial data sets together
tidy.data.set.1 <- cbind(data.subject
                         , data.y
                         , data.X
                         )

setwd("C:/Coursera/Data Science Specialization/Getting and Cleaning Data/Project 2")

# Create text file for first dataset
write.table(tidy.data.set.1
          , file = "tidy.data.part1.txt"
          , sep = ","
          , row.names = FALSE
          )

# Compute the averages grouped by subject and activity
tidy.data.set.2 <- aggregate(tidy.data.set.1[, 3:dim(tidy.data.set.1)[2]]
                             , list(tidy.data.set.1$subject
                                   , tidy.data.set.1$activity
                                    )
                             , mean
                             )

names(tidy.data.set.2)[1:2] <- c('subject', 'activity')

# Create text file for second dataset
write.table(tidy.data.set.2
          , file = "tidy.data.part2.txt"
          , sep = ","
          , row.names = FALSE
          )
