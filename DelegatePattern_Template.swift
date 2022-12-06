///Mark: Delegate Pattern Template

// Define the delegate protocol
protocol DelegateProtocol {
  func methodOne(method: String)
}

// Define a class that needs to use a delegate
class Boss {
  // Declare a delegate property with a type that conforms to the delegate protocol
  var delegate: DelegateProtocol?

  func bossMethod(action: String) {
    // Call the delegate's method to perform the delegated task
      let orderNow = delegate?.methodOne(method: action)
      
  }
}
// Define a class that implements the delegate protocol
class Intern: DelegateProtocol {
    func methodOne(method: String) {
        print("Intern: How may I help you?: \(method)")
    }
}

// Create an instance of the calculator class and set its delegate
let boss = Boss()
let intern = Intern()
boss.delegate = intern

// Use the calculator to add some numbers
boss.bossMethod(action: "Boss: Bring me a coffee, pls")


