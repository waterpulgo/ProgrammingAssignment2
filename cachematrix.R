## Programing Assigment 2
## After being confused out of my mind I think I have what it's asked here.
## Aug 24-2014
## test run ok 
makeCacheMatrix <- function(x = matrix()) {
	# Validate you have the correct type of input
	if (!is.matrix(x)) {    ## Just like when we check for is.NA
		print("You need to provide a MATRIX type parameter")
		print("This function will end...")
		## found this gem in 
		stop("try again")
	}
	
	I <- NULL    ## I for Inverted Matrix
	set <- function(y) { ##Initialize values for Matrix
		x <- y
		I <- NULL  ## Initilize for this context
	}
	## next we will get the functions to "get"  the value of x
	get <- function() x
	## Reverse the Matrix
	setinverse <- function(solve) I <-  solve
	## get Values of I
	getinverse <- function() I
	## produces a list
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

cacheSolve <- function(x, ...) {
	## the followin will return an matrix that is the inverse of x
	I <- x$getinverse()  ## cached inverse matrix
	Z <- x$get() ## Retrieve
	I <- solve(Z, ...) ##solve recently retrieves Z
	x$setinverse(I)
	I   ## Prints the inverse Matrix of x
}
