## This is the Assignment 2 of the R Programming course from Coursera.
## It is related to Lexical Scoping.

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
          ## initialization
          z<-NULL
          set<-function(y){
                    x<<-y
                    z<<-NULL
          }
          
          ## get function
          get<-function() x
          
          ## setting the matrix
          setmatrix <- function(solve) z <<- solve
          
          ## getting the matrix
          getmatrix <- function() z
          
          list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}
