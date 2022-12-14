

protocol DealerDelegate {
    func greetCustomer()
    func getCustomerCreditReport()
    func takeCustomerOnTestDrive()
    func closeTheSale()
}

class Dealer {
    var delegate: DealerDelegate?
    
    func engageSalesman() {
        var engage = delegate?.greetCustomer()
    }
}

class Salesman: DealerDelegate {
    func greetCustomer() {
        print("Hi, what brings you in?")
    }
    
    func getCustomerCreditReport() {
        print("Let's fill out your credit application")
    }
    
    func takeCustomerOnTestDrive() {
        print("let's go on a test drive")
    }
    
    func closeTheSale() {
        print("I know you like this car. Let's sets up ")
    }
}

//instantiate
let johnsRt13 = Dealer()
let santiago = Salesman()

johnsRt13.delegate = santiago

johnsRt13.engageSalesman()
johnsRt13.delegate?.closeTheSale()

