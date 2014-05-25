## This is the Assignment 2 of the R Programming course from Coursera.
## It is related to Lexical Scoping.

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
          z<-NULL
          set<-function(y){
                    x<<-y
                    z<<-NULL
          }
          get<-function() x
          setmatrix <- function(solve) z <<- solve
          getmatrix <- function() z
          list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix function. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x=matrix(), ...) {
          z<-x$getmatrix()
          if(!is.null(z)){
                    message("getting data from the cache")
                    return(z)
          }
          matrix<-x$get()
          z<-solve(matrix, ...)
          x$setmatrix(z)
          z
}
