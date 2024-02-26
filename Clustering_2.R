set.seed(1)
getwd()
setwd("/Users/madhuryaj/Desktop/marketing_analytics/")
# Set the file path to your CSV file
file_path <- "retail_segmentation.csv"

# Read the CSV file
data <- read.csv(file_path)

# View the structure of the data
str(data)

# View the first few rows of the data
head(data)


# implement Hierarchical clustering in R

#The hclust() function implements hierarchical clustering in R. using complete, single, and average
#linkage clustering, with Euclidean distance as the dissimilarity measure

seg_hclust <-
  hclust(dist(scale(
    cbind(
      data$avg_order_size,
      data$avg_order_freq,
      data$crossbuy,
      data$multichannel,
      data$per_sale,
      data$tenure,
      data$return_rate,
      data$avg_mktg_cnt
    )
  ))
  , method = "complete")


x <- c(1:10)
y <- sort(seg_hclust$height, decreasing = TRUE)[1:10]
plot(x, y):lines(x, y, col = TRUE)


# for centroid

seg_hclust_centroid <-
  hclust(dist(scale(
    cbind(
      data$avg_order_size,
      data$avg_order_freq,
      data$crossbuy,
      data$multichannel,
      data$per_sale,
      data$tenure,
      data$return_rate,
      data$avg_mktg_cnt
    )
  ))
  , method = "centroid")

x_centroid <- c(1:15)
y_centroid <-
  sort(seg_hclust_centroid$height, decreasing = TRUE)[1:15]
y_centroid
plot(x_centroid, y_centroid):lines(x_centroid, y_centroid, col = TRUE)


# single linkage

seg_hclust_single <-
  hclust(dist(scale(
    cbind(
      data$avg_order_size,
      data$avg_order_freq,
      data$crossbuy,
      data$multichannel,
      data$per_sale,
      data$tenure,
      data$return_rate,
      data$avg_mktg_cnt
    )
  ))
  , method = "single")

a <- c(1:15)
b <- sort(seg_hclust_single$height, decreasing = TRUE)[1:15]

plot(a, b):lines(a, b, col = TRUE)


# K-Means clustering

seg_kmeans <- kmeans(x=data.frame(data$avg_order_size,
                                   data$avg_order_freq,
                                   data$crossbuy,
                                   data$multichannel,
                                   data$per_sale,
                                   data$tenure,
                                   data$return_rate,
                                   data$avg_mktg_cnt),7)
seg_kmeans


# K-Means clustering with scale

seg_kmeans_scale<- kmeans(scale(x=data.frame(data$avg_order_size,
                                        data$avg_order_freq,
                                        data$crossbuy,
                                        data$multichannel,
                                        data$per_sale,
                                        data$tenure,
                                        data$return_rate,
                                        data$avg_mktg_cnt)),7)
seg_kmeans_scale


# K-Means clustering with nsatrt , fix the 1st node and run for 30 times

seg_kmeans_n <- kmeans(x=data.frame(data$avg_order_size,
                                        data$avg_order_freq,
                                        data$crossbuy,
                                        data$multichannel,
                                        data$per_sale,
                                        data$tenure,
                                        data$return_rate,
                                        data$avg_mktg_cnt),7,nstart=30)
seg_kmeans_n


#

segment=seg_kmeans$cluster
segmentation<-cbind(data,segment)
segmentation
write.csv(segmentation, file=file.choose(new=TRUE),row.names = FALSE)
