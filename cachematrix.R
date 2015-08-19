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

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'

}
