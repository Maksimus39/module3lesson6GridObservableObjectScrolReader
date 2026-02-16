import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    @State private var selectedCategory: BeverageCategory = .lemonade
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView()
            
            VStack(spacing: 30) {
                SearchView()
            }
            
            VStack(spacing: 43) {
                CategoryView(selectedCategory: $selectedCategory)
                ScrollView{
                    GridItemView(
                        beverages: viewModel.beverages.filter { $0.category == selectedCategory }
                    )
                }
            }
            Spacer()
        }
        .padding(28)
    }
}


#Preview {
    ContentView()
}
