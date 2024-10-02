import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

class BankAccount {
    
    var balance: Int = 0
    
    let queue = DispatchQueue.global()
    let queue2 = DispatchQueue.global()
    let lock = NSLock()
    let group = DispatchGroup()
    
    func deposit() {
        group.enter()
        queue.async {
            self.lock.lock()
            self.balance += 1
            self.lock.unlock()
            self.group.leave()
        }
    }
    
    func withdraw() {
        group.enter()
        queue2.async {
            self.lock.lock()
            self.balance -= 1
            self.lock.unlock()
            self.group.leave()
        }
    }
    
    func getBalance() {
        group.notify(queue: .main) {print(self.balance)}
    }
}

let bankInfo = BankAccount()
for i in 1...100{
    bankInfo.deposit()
}
for i in 1...100{
    bankInfo.withdraw()
}
bankInfo.getBalance()







