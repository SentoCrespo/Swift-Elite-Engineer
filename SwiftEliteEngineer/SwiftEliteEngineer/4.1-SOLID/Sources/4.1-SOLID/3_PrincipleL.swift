import Foundation

// MARK: - ❌ BAD implementation
class Bird {
    
    func fly() {
        print("Flying")
    }
    
}

class PenguinBad: Bird {
    
    override func fly() {
        fatalError("Penguins can't fly")
    }
    
}

// MARK: - ✅ ELITE implementation
protocol Flying {
    func fly()
}

class Eagle: Flying {
    func fly() {
        print("Flying high!")
    }
}

class Penguin {
    func swim() {
        print("Swimming in the ocean!")
    }
}
