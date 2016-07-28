## Put comments here that give an overall description of what your
## functions do

## The first function, `makeCacheMatrix` creates a special "vector" that containing a function to:
 +        ## set the matrix in cache
 +        ## get the matrix from cache
 +        ## set the inverse matrix into cache
 +        ## get the inverse matrix from cache
 
 makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  get <- function() x
  setInverse <- function(solve) inv <<- solve
  getInverse <- function() inv
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Cachesolve checks if the matrix is solved, if it is solved it returns the matrix,
 + ## otherwise it inverts the matrix and sets it as 'setinverse'
 
 cacheSolve <- function(x,...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  data <- x$get()
  inv <- solve(data,...)
  x$setInverse(inv)
  inv
}

Contact GitHub API Training Shop Blog About
© 2016 GitHub, Inc. Terms Privacy Security Status Help
