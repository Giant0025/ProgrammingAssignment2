## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


## The first function, `makeCacheMatrix` creates a special "vector" that containing a function to:
 +        ## set the matrix in cache
 +        ## get the matrix from cache
 +        ## set the inverse matrix into cache
 +        ## get the inverse matrix from cache
 +
 +makeCacheMatrix <- function(x = matrix()) {
 +        inv <- NULL
 +        set <- function(y) {
 +                x <<- y
 +                inv <<- NULL
 +        }
 +        get <- function() x
 +                setinverse <- function(solve) inv <<- solve
 +                getinverse <- function() inv
 +                list(set = set, 
 +                     get = get,
 +                     setinverse = setinverse,
 +                     getinverse = getinverse)
 +}
 +
 +
 +## Cachesolve checks if the matrix is solved, if it is solved it returns the matrix,
 +## otherwise it inverts the matrix and sets it as 'setinverse' 
 +cacheSolve <- function(x, ...) {
 +        ## Return a matrix that is the inverse of 'x'
 +        inv <- x$getinverse()
 +        if(!is.null(inv)) {
 +        
 +        # if the inverse has already been calculated
 +        
 +                message("getting cached data")
 +                return(inv)
 +        }
 +        
 +        data <- x$get()
 +        inv <- solve(data, ...)
 +        x$setinverse(inv)  # sets the value of the inverse in cache via the setinv function.
 +        inv
 +}
 +
Contact GitHub API Training Shop Blog About
© 2016 GitHub, Inc. Terms Privacy Security Status Help
