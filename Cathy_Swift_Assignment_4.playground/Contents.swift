import Foundation

protocol ElectricitySystem {
    var batteryLevel: Double { get set }
    func chargeBattery()
    func checkBatteryLevel()
}

protocol EntertainmentSystem {
    var hasTV: Bool { get set }
    func turnOnTV()
    func turnOffTV()
}

class Camper: ElectricitySystem, EntertainmentSystem {
    var brand: String
    var batteryLevel: Double
    var hasTV: Bool
    
    init(brand: String, batteryLevel: Double, hasTV: Bool) {
        self.brand = brand
        self.batteryLevel = batteryLevel
        self.hasTV = hasTV
    }
    func chargeBattery() {
        print("Charging the battery.")
    }
    
    func checkBatteryLevel() {
        print("Checking battery level.")
    }
    
    func turnOnTV() {
        if !hasTV {
            print("Stay tuned for the Bugs Bunny and Tweety Show!")
            hasTV = true
        } else {
            print("TV is already turned on, you are dreaming again Cathy!")
        }
    }
    
    func turnOffTV() {
        if !hasTV {
            print("Turning off the TV, no more screen time for you!")
            hasTV = false
        } else {
            print("The TV is already turned off, are you okay out there?")
        }
    }
}

let myCamper = Camper(brand: "Scarlett", batteryLevel: 13.0, hasTV: false)
print("Brand: \(myCamper.brand)")
print("Battery Level: \(myCamper.batteryLevel)%")
print("Has TV: \(myCamper.hasTV)")

myCamper.chargeBattery()
myCamper.turnOnTV()
