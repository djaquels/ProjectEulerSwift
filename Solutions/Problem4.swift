// Find the largest palindrome number made from the product of two 3-digits number
//Function that fids palindromes numbers
//Answer : 906609

import Foundation //Library to work with pow
/*
Function that find if a number is palindrome
*/
func isPalindrome(number: Int)-> Bool{
  var state = false
  let tocompare = number
  var reverse = 0
  var dec = 1
  let numdigits = String(number).characters.count
  let decl = Int(pow(Double(10),Double(numdigits)))
  repeat {
    let digit = (number / (dec)) % 10
    dec = dec * 10
    reverse = reverse + (digit * ( decl / dec))
  } while (dec <= number)
  if(reverse == tocompare){
    state = true
  }
  return state
}
var largest = 0
for first in 100...999{
  for second in 100...999{
    let n = first * second
    if (isPalindrome(number:n)){
      if n > largest{
        largest = n
      }
    }
  }
}
print("The solution is \(largest)")
