## cachematrix.R
## Assignment #2
##
## Tom Anderson
##
## The function 'makeCacheMatrix' will create a special object which contains a matrix
## and its inverse.  This way if the matrix already has an inverse created, we do not
## need to recalculate it.
## The second function, 'cacheSolve' will pull the inverse from the cache if it exists, 
## if not, it will recalculate it.

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
     ## Set default
     m <- NULL
     
     # set the value of the matrix
     setMatrix <- function(y) {
          x <<- y
          m <<- NULL
     }
     
     ## get the value of the matrix
     getMatrix <- function() x
     
     ## set the value of the inverse
     setInverseMatrix <- function(m) m <<- solve(m)
     
     ## get the value of the inverse
     getInverseMatrix <- function() m
     
     ## return the list of the matrix fnctions
     list(setMatrix = setMatrix,
          getMatrix = getMatrix,
          setInverseMatrix = setInverseMatrix,
          getInverseMatrix = getInverseMatrix)
}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix 
## above. If the inverse has already been calculated (and the matrix has not changed), then 
## the cachesolve should retrieve the inverse from the cache.

## The inverse of the square matrix will be computed using the R function "Solve".
## For example, if X is a square invertible matrix, then solve(X) returns its inverse.
## This function assumes the matrix is always invertible.

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'.  Check first to see if it is cached
     ## if not, then calculate it before returning it.

     ## See if the inverse of x has already been calculated
     m <- x$getInverseMatrix()
     if(!is.null(m)) {
          ##print("getting cached matrix")
          ## The inverse matrix exists already, so return it to the calling function
          return(m)
     }

     ## no inverse matrix is cached, so need to calculate it
     ## get the original matrix into 'data'
     data <- x$getMatrix()

     ## compute the inverse of the original matrix in 'data'
     m <- solve(data)
     
     ## cache it for future use
     x$setInverseMatrix(m)
     
     ## Return the inverse of the matrix
     m
}
