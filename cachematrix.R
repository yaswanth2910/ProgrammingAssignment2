## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ## Initialize the inverse property
    x <- NULL

    ## Method to set the matrix
    set <- function( matrix ) {
            y <<- matrix
            x <<- NULL
    }

    ## Method the get the matrix
    get <- function() {
    	## Return the matrix
    	y
    }

    ## Method to set the inverse of the matrix
    setInverse <- function(inverse) {
        x <<- inverse
    }

    ## Method to get the inverse of the matrix
    getInverse <- function() {
        ## Return the inverse property
        x
    }

    ## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
        ## Return a matrix that is the inverse of 'x'
    y <- x$getInverse()

    ## Just return the inverse if its already set
    if( !is.null(y) ) {
            message("getting cached data")
            return(y)
    }

    ## Get the matrix from our object
    data <- x$get()

    ## Calculate the inverse using matrix multiplication
    y <- solve(data) %*% data

    ## Set the inverse to the object
    x$setInverse(y)

    ## Return the matrix
    y
}
