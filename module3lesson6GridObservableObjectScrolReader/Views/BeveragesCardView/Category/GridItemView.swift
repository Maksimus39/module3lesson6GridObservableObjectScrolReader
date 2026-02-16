import SwiftUI

struct GridItemView: View {
    let beverages: [Beverage]
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(beverages) { beverage in
                BeverageCardView(beverage: beverage)
            }
        }
        .padding(.horizontal, 8)
    }
}
