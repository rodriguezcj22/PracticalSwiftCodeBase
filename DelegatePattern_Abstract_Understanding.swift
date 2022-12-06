///Mark: The Delegate Pattern has 8 steps

// Step 1: Create Delegate Protocol

protocol DelegateProtocol {
    func delegateAction() {}
}

// Step 2: Create Boss Class

class Boss {
  
  // Step 3: Create the delegate OBJECT that the boss will call on
  var delegate: DelegateProtocol?
  // Step 4: Asking the delegate to perform its action for the boss
  let property = delegate?.delegateAction() //calls for delegate method
}

// Step 5: Create Intern Class
class Intern {
  func delegateAction() {}
}

// Step 6: Object instatiation for the boss object and the intern object
let bossObject = Boss()
let internObject = Intern()

// Step 7: establish who will be delegating for the boss
bossObject.delegate = internObject

// Step 8: boss object uses the delegate methods (this methods are layed out on the DelegateProtocol)
bossObject.delegateAction()
  
