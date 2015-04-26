#---
#title: "project"
#output: html_document
#---



#```{r}
library(dplyr)
library(data.table)
# 
# First each column needs a readable name
# in features.txt are the column names for X_test.txt and X_train.txt
#setwd("/Users/steinbichler/Desktop/Coursera/project/UC/")

file_list <- list.files( )
file_list

features <- read.table("features.txt", sep="\t", header=FALSE)
str(features)
head(features, n=3)
 
activity_labels <- read.table("activity_labels.txt", sep="\t", header=FALSE)
str(activity_labels)
dim(activity_labels)
head(activity_labels, n=3)
names(activity_labels)
tp <-(1:6)
tp
activity_labels_new <- mutate(activity_labels, index=tp)
names(activity_labels_new)
activity_labels_new
colnames(activity_labels_new) <- c("movement", "index")
names(activity_labels_new)
activity_labels_new




# transformation from dataframe to vector for dataframe features
avector <- features[['V1']]
class(avector)
bvector <- features[['V1']]

## for the test data files

#setwd("/Users/steinbichler/Desktop/Coursera/project/UC/test")
subject_test <- read.table("subject_test.txt", sep="\t", header=FALSE)

# in the file subject_test is one column named subject
colnames(subject_test)  <- ("subject")
head(subject_test, n=3)

y_test <- read.table("y_test.txt", sep="\t", header=FALSE)

# in the file y_test is one column named activity_label
colnames(y_test)  <- ("activity_label")
head(c, n=3)

# X_test: the column names are stored in the vector avector (features.txt)
X_test <-read.table("X_test.txt", sep="", header=FALSE)
head(X_test, n=1)
dim(X_test)
colnames(X_test) <- avector
head(X_test, n=3)

dim(X_test)
dim(y_test)
dim(subject_test)

str(X_test)
str(y_test)
str(subject_test)

library(dplyr)

all_test <- data.frame(y_test, subject_test, X_test)

## for the train data files

#setwd("/Users/steinbichler/Desktop/Coursera/project/UC/train")
subject_train <- read.table("subject_train.txt", sep="\t", header=FALSE)

# in the file subject_train is one column named subject
colnames(subject_train)  <- ("subject")
head(subject_train, n=3)

y_train <- read.table("y_train.txt", sep="\t", header=FALSE)

# in the file y_train is one column named activity_label
colnames(y_train)  <- ("activity_label")
head(c, n=3)

# X_train: the column names are stored in the vector bvector (features.txt)
X_train <-read.table("X_train.txt", sep="", header=FALSE)
head(X_train, n=1)
dim(X_train)
colnames(X_train) <- bvector
head(X_train, n=3)

dim(X_train)
dim(y_train)
dim(subject_train)

str(X_train)
str(y_train)
str(subject_train)



all_train <- data.frame(y_train, subject_train, X_train)

head(all_train, n=3)




## Merge train and test data

all <- rbind(all_train, all_test)
head(all, n=3)
dim(all)


## apply the names given in activity_labels.txt to the merged data from train + test
names(all)
all$al <-activity_labels_new$movement[match(all$activity_label,activity_labels_new$index)]
tail(all, n=10)
dim(all)

all_tidy <- arrange(all, subject, al)
head(all_tidy, n=20)

#library(data.table)
#f <- data.table(all_tidy)
#f[, lapply(mean), by=c("subject", "al")]


tolower(names(all))

mean_deviation <- subset(all, select=grep("\\.mean\\.\\.", names(all)))
std_deviation <- subset(all, select=grep("\\.std\\.\\.", names(all)))
all_tidy <- data.frame(mean_deviation, std_deviation)
dim(all_tidy)

write.table(all_tidy, "tidy.txt", sep=" ")
