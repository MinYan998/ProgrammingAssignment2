##The function cacheSolve returns the inverse of the matrix created with
## the makeCacheMatrix function.


## makeCacheMatrix creates a special matrix object

makeCacheMatrix <- function(x = matrix()) {
      invrs <- NULL
set <- function(y) {
x <- y
invrs <- NULL
}
get <- function() x
setinverse <- function(inverse) invrs <- inverse
getinverse <- function() invrs
list(set = set, get = get,
setinverse = setinverse,
getinverse = getinverse)
}



## return a matrix that the inverse of 'x'
cacheSolve <- function(x, ...) {
invrs <= x$getinverse()
if(!is.null(invrs)) {
message("getting cached data")
return(invrs)
}
mat <- x$get()
invrs <- solve(mat, ...)
x$setinverse(invrs)
invrs
}

}


