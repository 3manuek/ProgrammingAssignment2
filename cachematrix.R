## Caching the Inv Matrix of a existent square/inversible  matrix

## Receives a matrix and built a set of functions for it

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL

        # Added, not used 
        check <- function() { 
                   class(try(solve(x),silent=T))=="matrix" 
        } 
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInvMatrix <- function(invMatrix) m <<- invMatrix
        getInvMatrix <- function() m
        list(set = set, get = get,
             setInvMatrix = setInvMatrix,
             getInvMatrix = getInvMatrix,
             check = check )
}


## Solves and caches the Inverse of the matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInvMatrix()
        if(!is.null(m) & (x$check()) ) {
                message("getting cached data")
                return(m)
        }
        
        m <- solve(x$get())
        x$setInvMatrix(m)
        m
}
