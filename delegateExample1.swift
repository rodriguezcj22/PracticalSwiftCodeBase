// Define the delegate protocol
protocol BuyFoodDelegate {
  func orderFood(order: String)
}

// Define a class that needs to use a delegate
class Boss {
  // Declare a delegate property with a type that conforms to the delegate protocol
  var delegate: BuyFoodDelegate?

  func orderFood(item: String) {
    // Call the delegate's method to perform the delegated task
      let orderNow = delegate?.orderFood(order: item)
  }
}
// Define a class that implements the delegate protocol
class Intern: BuyFoodDelegate {
    func orderFood(order: String) {
        print("You bought: \(order)")
    }
}

// Create an instance of the calculator class and set its delegate
let carlos = Boss()
let jason = Intern()
carlos.delegate = jason

// Use the calculator to add some numbers
carlos.orderFood(item: "Rice and beans!")
