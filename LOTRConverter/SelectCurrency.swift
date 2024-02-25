import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismissSheet
    
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency

    var body: some View {
        ZStack {
            // Parchment background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                // Currency icons
                IconGrid(currency: $topCurrency)

                // Text
                Text("Select the currency you would like to covert to:")
                    .fontWeight(.bold)
                
                // Currency icons
                IconGrid(currency: $bottomCurrency)

                // Done button
                Button("Done") {
                    dismissSheet()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency(topCurrency: .constant(.copperPenny), bottomCurrency: .constant(.silverPiece))
}
