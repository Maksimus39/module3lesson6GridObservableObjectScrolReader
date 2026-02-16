import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Button {
                // action
            } label: {
                Image("vectorleft")
                    .resizable()
                    .frame(width: 24, height: 14)
            }
            
            Spacer()
            
            Text("Products")
                .font(.system(size: 24, weight: .bold))
            
            Spacer()
            
            Button {
                // action
            } label: {
                Image("option 1")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}
