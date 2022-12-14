
protocol AppDelegateMethods {
    func sell()
    func buy()
    func trade()
    func searchUsedCars()
    func searchNewCars()
    func lease()
}

class Auto {
    var make: String
    var model: String
    var year: Int
    var mileage: Int
    
    init(make: String, model: String, year: Int, mileage: Int) {
        self.make = make
        self.model = model
        self.year = year
        self.mileage = mileage
    }
}

class User {
    var firstName: String
    var lastName: String
    var income: Int
    var creditScore: Int
    
    init(firstName: String, lastName: String, income: Int, creditScore: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.income = income
        self.creditScore = creditScore
    }
}

class Dealership {
    var name: String
    var address: String
    var telephone: String
    var website: String
    
    init(name: String, address: String, telephone: String, website: String) {
        self.name = name
        self.address = address
        self.telephone = telephone
        self.website = website
    }
}

class MainFeatures: AppDelegateMethods {
    func sell() {
        print(" Sell: make? model? year? ")
    }
    
    func buy() {
        print(" Buy: make? model? year? ")
    }
    
    func trade() {
        print(" Trade: make? model? year? ")
    }
    
    func searchUsedCars() {
        print(" What USED vehicle are you looking for? ")
    }
    
    func searchNewCars() {
        print(" What NEW vehicle are you looking for? ")
    }
    
    func lease() {
        print(" Lease a vehicle ")
    }
}

class MainViewController {
    //boss class
    
    var delegate: AppDelegateMethods?
    
    init() {
        print("the app is running...")
    }
    
    func buy() {
        delegate?.buy()
    }
    func sell() {
        delegate?.sell()
    }
    func trade() {
        delegate?.trade()
    }
    func searchUsedCars() {
        delegate?.searchUsedCars()
    }
    func searchNewCars() {
        delegate?.searchNewCars()
    }
    func lease() {
        delegate?.lease()
    }
}

//classes: auto, user, dealership

var app = MainViewController() //boss
var mainFeatures = MainFeatures() //intern

var user = User(firstName: "Wale", lastName: "Smith", income: 100000, creditScore: 800)
var car = Auto(make: "Honda", model: "Civic", year: 2023, mileage: 0)
var dealership = Dealership(name: "John's Rt 13", address: "303 Ben St, Miami, Florida", telephone: "302-543-5643", website: "johndealer.com")

//once this line happens, "app" will have access to the methods built in "mainFeatures"
app.delegate = mainFeatures

//now the boss is ready to used the methods implemented by the intern
app.lease()
app.searchUsedCars()
app.trade()
app.searchUsedCars()

