# Getting and Cleaning Data Course Project

# merge test dataset & train dataset into a single dataset
trainingX <- read.table ("train/X_train.txt", sep = "", header = FALSE)
testX <- read.table ("test/X_test.txt", sep = "", header = FALSE)
X <- rbind(trainingX, testX)

trainingY <- read.table ("train/y_train.txt", sep = "", header = FALSE)
testY <- read.table ("test/y_test.txt", sep = "", header = FALSE)
Y <- rbind(trainingY, testY)

trainingSubj <- read.table ("train/subject_train.txt", sep = "", header = FALSE)
testSubj <- read.table ("test/subject_test.txt", sep = "", header = FALSE)
Subj <- rbind(trainingSubj, testSubj)

# extract mean & standard deviation measurement 
features <- read.table("features.txt", sep = "", header = FALSE)
columnIndex <- grep("-mean\\(\\)|-std\\(\\)", features[, 2], ignore.case = TRUE)
X <- X[, columnIndex]

# assign descriptive names to features
features[[2]] <- gsub("tGravity", "timeGravity", features[[2]])
features[[2]] <- gsub("fBodyBody", "freqBody", features[[2]])
features[[2]] <- gsub("tBodyBody", "timeBody", features[[2]])
features[[2]] <- gsub("fBody", "freqBody", features[[2]])
features[[2]] <- gsub("tBody", "timeBody", features[[2]])
features[[2]] <- gsub("-", "_", features[[2]])

names(X) <- features[columnIndex, 2]
names(X) <- gsub("\\(|\\)", "", names(X))
names(X) <- tolower(names(X))

# assign descriptive names to activities
activityName <- read.table("activity_labels.txt")
activityName[, 2] = gsub("_", "", (activityName[, 2]))
Y[, 1] = activityName[Y[, 1], 2]
names(Y) <- "activity"

names(Subj) <- "subject"
cleaned <- cbind(Subj, Y, X)
write.table(cleaned, "cleaned.txt")

# "assemble" the data...
uniqueSubjects = unique(Subj)[, 1]
subjectNumber = length(unique(Subj)[, 1])
activityNumber = length(activityName[, 1])
numCols = dim(cleaned)[2]
result = cleaned[1:(subjectNumber * activityNumber), ]

row = 1
for (subject in 1:subjectNumber) {
    for (activity in 1:activityNumber) {
        result[row, 1] = uniqueSubjects[subject]
        result[row, 2] = activityName[activity, 2]
        mySet <- cleaned[cleaned$subject == subject & cleaned$activity == activityName[activity, 2], ]
        result[row, 3:numCols] <- colMeans(mySet[, 3:numCols])
        row = row + 1
    }
}
write.table(result, "means.txt", row.name = FALSE)
