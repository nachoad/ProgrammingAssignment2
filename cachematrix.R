## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL                                           # begins by setting the inv to NULL as a placeholder for a future value
      set <- function(y) {                                  # defines a function to set the vector, x, to a new vector, y, and resets the inverse, inv, to NULL
            x <<- y
            inv <<- NULL
      }
      get <- function() x                                   # returns the vector, x
      setInverse <- function(inverse) inv <<- inverse       # sets the inverse, inv, to inv
      getInverse <- function() inv                          # returns the inverse, inv
      list(set = set,
           get = get,
           setInverse = setInverse,
           getInverse = getInverse)                         # returns the 'special vector' containing all of the functions defined
}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      inv <- x$getInverse()
      if (!is.null(inv)) {                      # checks if the inverse has been calculated
            message("getting cached data")
            return(inv)                         # if the inverse is cached, returns it
      }
      mat <- x$get()
      inv <- solve(mat, ...)                    # calculates the inverse
      x$setInverse(inv)
      inv
}
