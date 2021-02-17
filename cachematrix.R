## Put comments here that give an overall description of what your
## functions do

## The function take the cache from a matrix

makeCacheMatrix <-function(mx=matrix){
  inv=NULL
  set<-function(matrix){
    mx<<-matrix
    i=NULL
  }
  get<-function() mx
  setInv<-function(inverse){i<<-inverse}
  getInv<-function() i
  list(set = set, get = get,
      setInv = setInv,
      getInv = getInv)
}


## Write a short comment describing this function

cacheSolve<- function(x, ...) {
  mx <- x$getmean()
  if(!is.null(mx)) {
    message("getting cached data")
    return(mx)
  }
  data <- x$get()
  mx <- solve(data, ...) %*% data
  x$setInverse(mx)
  mx
}
