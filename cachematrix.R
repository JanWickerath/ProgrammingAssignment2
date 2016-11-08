## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ## Function that creates a list object which stores three functions. One
    ## function to get the value of the matrix, one to set the inverse of the
    ## matrix to some value and one to get the cached inverse of a matrix.
    inv <- NULL
    get <- function() x
    setinv <- function(inverse) inverse <<- inverse
    getinv <- function() inv
    list(get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getinv()
    ## Check if the inverse has already been computed.
    if(!is.null(inv)) {
        message("getting cached inverse")
        return(m)
    }
    ## If the inverse has not yet been computed do so and store the result.
    mat <- x$get()
    inv <- solve(mat)
    x$setinv(inv)
    ## Return the inverse of x
    inv
}
