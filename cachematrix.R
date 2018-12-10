## Put comments here that give an overall description of what your
## There are two functions, the first one must save a Matrix in the chache
#while the second must calculate his reverse

## Write a short comment describing this function
 #calculate the reverse of a square matrix and save the results
 # cache the results
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setMatrix <- function(solve) m <<- solve
    getMatrix <- function() m
    list(set = set, get = get,
         setMatrix = setMatrix,
         getMatrix = getMatrix)
}
## Write a short comment describing this function
        ## Return a matrix that is the inverse of 'x'


cachemean <- function(x, ...) {
    m <- x$getMatrix()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setMatrix(m)
    m
}
