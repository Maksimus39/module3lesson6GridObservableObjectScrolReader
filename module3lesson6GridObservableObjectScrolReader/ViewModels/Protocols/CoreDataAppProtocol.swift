import Combine


protocol CoreDataAppProtocol: ObservableObject {
    var product: BeverageCatalog { get }
}
