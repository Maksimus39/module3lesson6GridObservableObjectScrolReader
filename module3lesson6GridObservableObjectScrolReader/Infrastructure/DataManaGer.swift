import Foundation

// random price
func randomPrice(min: Double = 1.0, max: Double = 5.0) -> Double {
    let randomValue = Double.random(in: min...max)
    return (randomValue * 100).rounded() / 100
}

class DataManaGer {
    func createCatalog() -> BeverageCatalog {
        let allBeverages: [Beverage] = [
            // Beverages
            Beverage(name: "Classic Lemonade", category: .lemonade, price: randomPrice()),
            Beverage(name: "Cucumber-Lemon Lemonade", category: .lemonade, price: randomPrice()),
            Beverage(name: "Ginger Lemonade", category: .lemonade, price: randomPrice()),
            Beverage(name: "Lavender Lemonade", category: .lemonade, price: randomPrice()),
            Beverage(name: "Mint Lemonade", category: .lemonade, price: randomPrice()),
            Beverage(name: "Peach Lemonade", category: .lemonade, price: randomPrice()),
            Beverage(name: "Raspberry Lemonade", category: .lemonade, price: randomPrice()),
            Beverage(name: "Strawberry Lemonade", category: .lemonade, price: randomPrice()),
            Beverage(name: "Watermelon Lemonade", category: .lemonade, price: randomPrice()),
            
            // Blended coffee
            Beverage(name: "Affogato-Style Blended Coffee", category: .blendedCoffee, price: randomPrice()),
            Beverage(name: "Caramel Frappuccino®", category: .blendedCoffee, price: randomPrice()),
            Beverage(name: "Cinnamon Dolce Blended Coffee", category: .blendedCoffee, price: randomPrice()),
            Beverage(name: "Coffee Frappé", category: .blendedCoffee, price: randomPrice()),
            Beverage(name: "Cookies & Cream Blended Coffee", category: .blendedCoffee, price: randomPrice()),
            Beverage(name: "Hazelnut Blended Coffee", category: .blendedCoffee, price: randomPrice()),
            Beverage(name: "Mocha Frappuccino®", category: .blendedCoffee, price: randomPrice()),
            Beverage(name: "Pumpkin Spice Blended Coffee", category: .blendedCoffee, price: randomPrice()),
            Beverage(name: "Vanilla Bean Blended Coffee", category: .blendedCoffee, price: randomPrice()),
            Beverage(name: "White Chocolate Mocha Blended", category: .blendedCoffee, price: randomPrice()),
            
            // Brewed сoffee
            Beverage(name: "AeroPress Coffee", category: .brewedCoffee, price: randomPrice()),
            Beverage(name: "Chemex Coffee", category: .brewedCoffee, price: randomPrice()),
            Beverage(name: "Cold Brew", category: .brewedCoffee, price: randomPrice()),
            Beverage(name: "Drip Coffee", category: .brewedCoffee, price: randomPrice()),
            Beverage(name: "French Press Coffee", category: .brewedCoffee, price: randomPrice()),
            Beverage(name: "Iced Brewed Coffee", category: .brewedCoffee, price: randomPrice()),
            Beverage(name: "Moka Pot Coffee", category: .brewedCoffee, price: randomPrice()),
            Beverage(name: "Nitro Cold Brew", category: .brewedCoffee, price: randomPrice()),
            Beverage(name: "Pour Over Coffee", category: .brewedCoffee, price: randomPrice()),
            Beverage(name: "Single-Origin Filter Coffee", category: .brewedCoffee, price: randomPrice()),
        ]
        
        return BeverageCatalog(beverages: allBeverages)
    }
}
