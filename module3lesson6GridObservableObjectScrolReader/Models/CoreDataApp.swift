import Foundation


enum BeverageCategory: String, CaseIterable, Identifiable {
    case lemonade
    case brewedCoffee
    case blendedCoffee
    
    var id: Self { self }
    var displayName: String {
        switch self {
        case .lemonade: "Lemonades"
        case .brewedCoffee: "Brewed Coffee"
        case .blendedCoffee: "Blended Coffee"
        }
    }
}

struct Beverage: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let category: BeverageCategory
    let price: Double
}


struct BeverageCatalog: Identifiable {
    let id = UUID()
    let beverages: [Beverage]
    
    // Удобные вычисляемые свойства
    var lemonades: [Beverage] {
        beverages.filter { $0.category == .lemonade }
    }
    
    var brewedCoffees: [Beverage] {
        beverages.filter { $0.category == .brewedCoffee }
    }
    
    var blendedCoffees: [Beverage] {
        beverages.filter { $0.category == .blendedCoffee }
    }
}
