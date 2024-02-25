import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let exchangeText: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            // Left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange text
            Text(exchangeText)
            
            // Right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .silverpiece, exchangeText: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
}
