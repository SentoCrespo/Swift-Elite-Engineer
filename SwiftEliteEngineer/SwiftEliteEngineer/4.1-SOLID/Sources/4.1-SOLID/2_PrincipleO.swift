import Foundation

// MARK: - ❌ BAD implementation
class DiscountBad {

    func calculate(type: String, price: Double) -> Double {
        if type == "student" {
            return price * 0.8
        } else if type == "senior" {
            return price * 0.7
        }
        return price
    }

}

// MARK: - ✅ ELITE implementation
protocol Discount {
    func apply(to price: Double) -> Double
}

class StudentDiscount: Discount {
    func apply(to price: Double) -> Double {
        return price * 0.8
    }
}

class SeniorDiscount: Discount {
    func apply(to price: Double) -> Double {
        return price * 0.7
    }
}
