## Put comments here that give an overall description of what your
## functions do

## In this function, Its defined asociated functions for the initial matrix x. In this case, get itself and calculate the inverse matrix.

makeCacheMatrix <- function(x = matrix()) {

	##Functions are defined to: 

      get <- function() x            # get the initial matrix 
	setInv<- function () solve(x)  # calculate the inverse matrix

      list(get = get, setInv = setInv)    # Set the functions like atributes in a list asociated to x
}


## This function calls the inverse function (defined before)... if its posible

cacheSolve <- function(x, ...) {

      ## Return a matrix that is the inverse of 'x'

	matrix <- x$get()     # Loading the value of the matrix
	dt <- det (matrix)    # Calculate the determinant of the matrix

      if(is.null(dt)) {     # Check if the determinant is 0 and it's not possible to calculate the inverse matrix. 
            message("The determinant is equal to 0. Matrix is not inversible.")
            return()        # Exit the function with not solution.
      }

      invMtrx <- x$setInv() # Call the funcion to calcutate inverse the matrix x
      return(invMtrx)       # Exit function with solution (Inverse Matrix)
}
