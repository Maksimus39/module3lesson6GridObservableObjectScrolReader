import SwiftUI

struct CategoryView: View {
    let categories: [BeverageCategory] = BeverageCategory.allCases
    @Binding var selectedCategory: BeverageCategory
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 28) {
                ForEach(categories) { category in
                    Button(category.displayName) {
                        selectedCategory = category
                    }
                    .font(.system(size: 18, weight: .regular))
                    .foregroundStyle(.black)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(
                        selectedCategory == category
                        ? .orange.opacity(0.5)
                        : .clear
                    )
                    .cornerRadius(8)
                }
            }
            .buttonStyle(PlainButtonStyle())
            .padding(.vertical, 4)
        }
    }
}
