## WEEK 3 ASSIGNMENT SANJAY CHOUDHARY

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- function(y) {
    x <<- y
    a <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) a <<- inverse
  getinverse <- function() a
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## SANJAY CHOUDHARY

cacheinverse <- function(x, ...) {
  a <- x$getinverse()
  if(!is.null(a)) {
    message("getting cached data")
    return(a)
  }
  b <- x$get()
  a <- solve(b, ...)
  x$setinverse(a)
  a
}
