#Histogram of Chlorides#
wine <- read.csv(file = 'C:\\Users\\wuzho\\Downloads\\Wine.csv')
Ch <- wine$chlorides
hist(Ch, breaks=1000, main="Chlorides Viscosity", col="darkmagenta")

#Histogram of Sulphates#
Su <- wine$sulphates
hist(Su, breaks=1000, main="Sulphates Viscosity", col="darkmagenta")

#Data result cleaning#
df<-wine[!(wine$chlorides > 0.15 | wine$sulphates > 1),]

#Scatter plot of Chlorides#
x <- df$chlorides
y <- df$quality
plot(x, y, main = "Regression Chlorides", xlab = "Chlorides", ylab = "Quality Ratings", pch = 1, frame = FALSE) 
abline(lm(y ~ x, data = df), col = "blue")

#Scatter Plot of Sulphates#
x <- df$sulphates
y <- df$quality
plot(x, y, main = "Regression Sulphates", xlab = "Sulphates", ylab = "Quality Ratings", pch = 1, frame = FALSE) 
abline(lm(y ~ x, data = df), col = "blue")

#Simple Linear Regression on quality and chlorides#
res <- lm (quality ~ chlorides, data = df)

#Simple Linear Regression on quality and sulphates#
res <- lm (quality ~ sulphates, data = df)

