## This function stors the inverse matrix in
## functions do

## Write a short comment describing this function

## Caches the inverse of matrix
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInv <- function(inverse) m <<- inverse
  getInv <- function() m
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}

## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
 
  m <- x$getInv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setInv(m)
  m
}

## Test Run
## y <- matrix (1:4,2,2)
## test <- makeCacheMatrix(y)
        ## First Time Storing inverse
## cacheSolve(test)
        ## Second call on same matrix, must retrieve from cache
## cacheSolve(test)
