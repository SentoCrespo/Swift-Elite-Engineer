import Foundation

// MARK: - ❌ BAD implementation
protocol Worker {
    func work()
    func takeBreak()
}

class RobotBad: Worker {
    func work() {
        print("Working...")
    }
    func takeBreak() {
        fatalError("Robots don't take breaks")
    }
}

// MARK: - ✅ ELITE implementation
protocol Workable {
    func work()
}

protocol Breakable {
    func takeBreak()
}

class Human: Workable, Breakable {
    func work() {
        print("Working...")
    }
    func takeBreak() {
        print("Taking a break")
    }
}

class Robot: Workable {
    func work() {
        print("Working...")
    }
}
