## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

makecachematrix<- function(x=matrix()){
  inv<- function(y) {
    x<<- y
    inv<<- NULL
  }
  get<- function() x
  
  setinverse<- function(inverse) inv
  getinverse<- function() inv
  list(set, get=get, setinverse=setinverse, getinverse=getinverse)
}

cacheSolve<- function(x,...){
  invmatrix<- x$getinverse()
  if(!is.null(invmatrix)) {
    message("Getting Invertible Matrix")
    return(invmatrix)
  }
  matrixdata<- x$getmatrix()
  invmatrix<- solve(matrixdata,...)
  x$setinverse(invmatrix)
  return(invmatrix)
}

testmatrix<- matrix(1:4,2,2)
testmatrix

cachematrix<- makecachematrix(testmatrix)
cachematrix$getmatrix()
cachematrix$getinverse()
cachematrix$getinverse()
cachematrix$getinverse()
cachematrix$getinverse()
cachematrix$getinverse()
