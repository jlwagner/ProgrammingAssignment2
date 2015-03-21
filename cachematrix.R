## Creates a matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mat<-NULL
  set<function(y){
    x<<-y
    mat<<-NULL
  }
  get<-function()x
  setmat<-function(solve)mat<<-solve
  getmat<-function()mat
  list(set=set,
       get=get,
       setmat=setmat,
       getmat=getmat)
  
}

## This will create an inverse of the above matrix

cacheSolve <- function(x=matrix, ...) {
  mat<-x$getmat()
  if(!is.null(mat)){
    message("retrieving cache")
    return(mat)
  }
  matrix<-x$get()
  mat<-solve(matrix,...)
  x$setmat(mat)
  mat
  
  ## Return a matrix that is the inverse of 'x'
}
