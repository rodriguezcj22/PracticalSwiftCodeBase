//MARK: Model Files

let names: [String] = ["Jason", "Kiara", "Mike", "Luis", "Mary", "Zooka", "Peter", "Jesenia", "Jirah", "Joshua"]

let lastNames: [String] = ["Smith", "Jackson", "Anderson", "Williamsport"]

let emails: [String] = ["\(names[0]).\(lastNames[0])@gmail.com",        "\(names[1]).\(lastNames[1])@gmail.com",
    "\(names[2]).\(lastNames[2])@gmail.com",
    "\(names[3]).\(lastNames[3])@gmail.com",
    "\(names[4]).\(lastNames[2])@gmail.com"]

let cellphones: [String] = ["923-432-2345", "453-111-2343", "983-672-5678", "234-439-8476", "997-778-4454", "723-936-9349", "653-431-4434", "993-646-4267"]

class Buyer {
    let firstName, lastName, email, cell: String
    
    init(firstName: String, lastName: String, email: String, cell: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.cell = cell
    }
}

//MARK: Controller Files

let firstBuyer = Buyer(firstName: names[0], lastName: lastNames[0], email: emails[0], cell: cellphones[0])

func printBuyer(name: Buyer) {
    let printStatement = """
         Name: \(firstBuyer.firstName)
         Last Name: \(firstBuyer.lastName)
         Email: \(firstBuyer.email)
         Cell: \(firstBuyer.cell)
        """
    print(printStatement)
}

printBuyer(name: firstBuyer)


//features: custom printer function, no hard-coded strings, class initialization using .self,
