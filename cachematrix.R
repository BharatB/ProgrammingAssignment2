## Function to create, view, set the inverse and view the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    
    #set the matrix
    setMatrix <- function(x) {
        m <<- x
        inv <<- NULL
    }
    
    #get the matrix
    getMatrix <- function() {
        m
    }
    
    #set the inverse of the matrix
    setInv <- function(invArg) {
        inv <<- invArg
    }
    
    #get the inverse of the matrix
    getInv <- function() {
        inv
    }
    
    list (setMatrix = setMatrix,
          getMatrix = getMatrix,
          setInv = setInv,
          getInv = getInv)
}


## Function to compute inverse or fetch from cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invMatrix <- x$getInv()
        if (!is.null(invMatrix)) {
                message ("getting cached inverse")
                return(invMatrix)
        }
    
    newMatrix <- x$getMatrix()
    invMatrix <- solve(newMatrix)
    x$setInv(invMatrix)
    invMatrix
}
