## This is the Assignment 2 of the R Programming course from Coursera.
## It is related to Lexical Scoping.

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix function.
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x=matrix(), ...) {
          z<-x$getmatrix()
          
          ## checking and getting data from the chache
          if(!is.null(z)){
                    message("getting data from the cache")
                    return(z)
          }
          
          matrix<-x$get()
          
          ## matrix inversion using function "solve"
          z<-solve(matrix, ...)
          x$setmatrix(z)
          z
}
