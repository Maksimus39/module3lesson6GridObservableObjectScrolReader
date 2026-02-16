import Foundation
import Combine

class ContentViewModel: ObservableObject {
    private let dataManager = DataManaGer()
    
    @Published var beverages: [Beverage] = []
    
    init() {
        self.beverages = dataManager.createCatalog().beverages
    }
}
