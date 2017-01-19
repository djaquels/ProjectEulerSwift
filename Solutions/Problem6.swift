// Find the difference between the sum of the squares of
// the first one hundred natural numbers and the square of the sum.
// First calculate the sum of squares with Gauss Formula
func gausSum(limit:Int)->Int{
let sum = limit * (limit+1) / 2
return sum
}
// The calculate the square of the sum
func sumsQuare(limit:Int)->Int{
let square = (limit*(limit+1)*((2*limit)+1))/6
return square
}
let result = gausSum(limit:100)*gausSum(limit:100) - sumsQuare(limit:100)
print("The answer is: \(result)")
