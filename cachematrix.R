## cachematrix.R
## Assignment #2
##
## Tom Anderson
##
## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix 
## above. If the inverse has already been calculated (and the matrix has not changed), then 
## the cachesolve should retrieve the inverse from the cache.

## The inverse of the square matrix will be computed using the R function "Solve".
## For example, if X is a square invertible matrix, then solve(X) returns its inverse.
## This function assumes the matrix is always invertible.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
