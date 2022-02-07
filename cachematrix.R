makeCacheMatrix <- function(x = matrix()) { ## Creating the special matrix
	
	inverse <- NULL
	set <- function(y){ ## just like the provided example
		x <<- y
		inverse <<- NULL

  	}

	## defining variables
	get <- function() x
	set_inverse <- function(solve) inverse <<- solve ## calculating the inverse
	get_inverse <- function() inverse

 	list(set = set, get = get, set_inverse = set_inverse, get_inverse = get_inverse) ## returning

}

cacheSolve <- function(x, ...) {
  
	inverse <- x$get_inverse() 
	if(!is.null(inv)) return(inv) ## checking if the inverse is already calculated

	data <- x$get()
	inverse <- solve(data) ## calculating the inverse for a new matrix
	x$set_inverse(inv)

	inv      

}
