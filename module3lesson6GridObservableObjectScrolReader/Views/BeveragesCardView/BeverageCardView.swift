import SwiftUI

struct BeverageCardView: View {
    let beverage: Beverage
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            VStack(alignment: .leading, spacing: 10) {
                Image(beverage.name)
                    .resizable()
                    .frame(height: 165)
                    .cornerRadius(22)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(beverage.name)
                        .font(.system(size: 16, weight: .bold))
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text(beverage.category.displayName)
                            .foregroundStyle(.category)
                            .font(.system(size: 14, weight: .regular))
                        
                        HStack(spacing: 12) {
                            Image("GroupPrice")
                                .resizable()
                                .frame(width: 16, height: 16)
                            
                            Text(String(format: "$%.2f", beverage.price))
                                .foregroundStyle(.category)
                                .font(.system(size: 18, weight: .regular))
                        }
                    }
                }
            }
        }
    }
}
