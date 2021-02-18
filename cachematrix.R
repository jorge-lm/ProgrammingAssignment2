## Put comments here that give an overall description of what your
## functions do

## The function take the cache from a matrix
## Follow the instructions the "makeCacheMatrix, 
## follow the next steps:
#     1. set the value of the matrix
#     2. get the value of the matrix
#     3. set the value of the inverse
#     4. get the value of the inverse

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


## Now that has cache of matrix,  function calculates the
# inverse, of the special "matrix" created with the above function
# the funtion show the messegae when matrix, be housen en cache data.


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

#END
