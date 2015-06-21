## Put comments here that give an overall description of what your
## functions do

# source("cachematrix.R")
# x <- matrix(rnorm(4), ncol=2)
# z <- makeCacheMatrix(x)
# cacheSolve(z)

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInvMatrix <- function(mean) m <<- mean
        getInvMatrix <- function() m
        list(set = set, get = get,
             setInvMatrix = setInvMatrix,
             getInvMatrix = getInvMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInvMatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        #data <- x$get()
        m <- solve(x$get())
        x$setInvMatrix(m)
        m
}
