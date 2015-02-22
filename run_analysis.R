# Removes unwanted features from the data, and name the rows
FilterDataColumns <- function(data, featureDim) {
  indices <- which(grepl("mean()", featureDim, fixed = T) |
                     grepl("std()", featureDim, fixed = T))
  newData <- data[, indices]
  names(newData) <- featureDim[indices]
  newData
}

# Replace activity ids by names
CleanActivity <- function(fact, dim) {
  activity <- merge(fact, dim, by.x = "activityId", by.y = "id")[, 2, drop = F]
}

# Reads the data in a folder and cleans it
ReadData <- function(dirName, activityDim, featureDim) {
  dataFile <- paste(dirName, "/X_", dirName, ".txt", sep = "")
  activityFile <- paste(dirName, "/y_", dirName, ".txt", sep = "")
  subjectFile <- paste(dirName, "/subject_", dirName, ".txt", sep = "")

  data <- FilterDataColumns(read.table(dataFile), featureDim)
  activity <- CleanActivity(
    read.table(activityFile, col.names = "activityId"), activityDim)
  subject <- read.table(subjectFile, col.name = "subjectId")

  # Join the data with activity and subject info, dropping the first useless
  # column each time
  data <- merge(activity, data, by = 0)[-1]
  data <- merge(subject, data, by = 0)[-1]
  data
}

RunAnalysis <- function() {
  # Labels
  activityDim <- read.table("activity_labels.txt",
                          col.names = c("id", "activity"))
  featureDim <- read.table("features.txt")[, 2]

  # Data
  trainData <- ReadData("train", activityDim, featureDim)
  testData <- ReadData("test", activityDim, featureDim)
  
  data <- rbind(trainData, testData)
  
  data <- aggregate(data[, -1:-2], by = list(data[, 1], data[, 2]), FUN = mean)
  names(data)[1:2] = c("subject", "activity")

  data[order(data$subject), ]
}
