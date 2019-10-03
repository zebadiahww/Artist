import UIKit
func changeDue(money : Double) {
   var amount = money
   var dollar = 0
   var quarter = 0
   var dimes = 0
   var nickels = 0
   var pennies = 0
   while amount > 0 { // while loop
       if amount >= 1 {
           amount = amount - 1
           dollar = dollar + 1
       }
       else if amount >= 0.25 {
           amount = amount - 0.25
           quarter = quarter + 1
       }
       else if amount >= 0.1 {
           amount = amount - 0.10
           dimes = dimes + 1
       }
       else if amount >= 0.05  {
           amount = amount - 0.05
           nickels = nickels + 1
       }
       else if amount >= 0.01 {
           amount = amount - 0.01
           pennies = pennies + 1
       } else {
           break // breaks out of loop
       }
   }
   print("Your exact change is \(dollar) dollars, \(quarter) quarter, \(dimes) dimes, \(nickels) nickels, \(pennies) pennies")
}
changeDue(money: 6.74)
changeDue(money: 20.05)
//Black Diamond
func changeBack(costOfItem : Double, amountPaid: Double) {
   let finalAmount = amountPaid - costOfItem
   var amount = finalAmount
   var dollar = 0
   var quarter = 0
   var dimes = 0
   var nickels = 0
   var pennies = 0
   while amount > 0 {
       if amount >= 1 {
           amount = amount - 1
           dollar = dollar + 1
       }
       else if amount >= 0.25 {
           amount = amount - 0.25
           quarter = quarter + 1
       }
       else if amount >= 0.1 {
           amount = amount - 0.10
           dimes = dimes + 1
       }
       else if amount >= 0.05  {
           amount = amount - 0.05
           nickels = nickels + 1
       }
       else if amount >= 0.01 {
           amount = amount - 0.01
           pennies = pennies + 1
       } else {
           break
       }
   }
   print("Your exact change is \(dollar) dollars, \(quarter) quarter, \(dimes) dimes, \(nickels) nickels, \(pennies) pennies")
}
changeBack(costOfItem: 3.21, amountPaid: 5.06)
