source("cachematrix.R")

m1 <- matrix(rnorm(16),ncol=4,nrow=4)
m2 <- matrix(rnorm(256),ncol=8,nrow=8)

m1c <- makeCacheMatrix(m1)
m2c <- makeCacheMatrix(m2)


# Caching, solving
cacheSolve(m1c)
cacheSolve(m2c)

# Returning from cache
cacheSolve(m1c)
cacheSolve(m2c)
