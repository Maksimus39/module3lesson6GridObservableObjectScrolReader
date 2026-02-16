import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView()
            
            VStack(spacing: 30) {
                SearchView()
            }
            
            Spacer()
        }
        .padding(28)
    }
}





#Preview {
    ContentView()
}
