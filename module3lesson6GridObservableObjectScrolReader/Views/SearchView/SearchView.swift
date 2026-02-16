import SwiftUI

struct SearchView: View {
    var body: some View {
        HStack(spacing: 12) {
            Button {
                print("Кнопка 1 нажата")
            } label: {
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 22)
                        .fill(.clear)
                        .frame(height: 60)
                        .overlay(
                            RoundedRectangle(cornerRadius: 22)
                                .stroke(.searchButton, lineWidth: 1)
                        )
                    
                    HStack(spacing: 13) {
                        Image("Vector")
                            .resizable()
                            .foregroundStyle(.vectorcolor)
                            .frame(width: 24, height: 24)
                        
                        Text("Search here..")
                            .foregroundStyle(.searchhedercolor)
                            .font(.system(size: 16, weight: .regular))
                    }
                    .padding(.leading, 19)
                }
            }

            Button {
                print("Кнопка 2 нажата")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 22)
                        .fill(.searchButton)
                        .frame(width: 60, height: 60)
                    
                    Image("Group")
                        .resizable()
                        .frame(width: 20, height: 24)
                }
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}
