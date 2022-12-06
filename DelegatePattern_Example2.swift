//Purpose: Pass a local variable out to the intern
protocol DistributorDelegate {
    func didSendGold(amount: Double)
}

class Distributor {
    var amtOfGoldToDistribute: Double = 0
    init(howMuchGoldDidWeFind: Double) {
        self.amtOfGoldToDistribute = howMuchGoldDidWeFind
    }
}

class BossGoldMining {
    var amtOfGold: Float = 0
    var delegate: DistributorDelegate?
    
    func collectGold(amtFound: Double) {
        print("So far we have collected \(amtFound) pounds of Gold")
        var amtToSend = delegate?.didSendGold(amount: amtFound)
        
    }
}

class InternDistributor: DistributorDelegate {
    
    func didSendGold(amount: Double) {
        print("We will send \(amount * 0.80) pounds of gold to the distributors")
    }
}

// Object instance creation.
let AMCGoldMining = BossGoldMining()
let RockLLCDistributors = InternDistributor()

AMCGoldMining.delegate = RockLLCDistributors

// Now I can use the delegate methods form AMCGoldMining

AMCGoldMining.collectGold(amtFound: 4)

