import SwiftUI

struct Header: View {
    let title: String
    let subtitle: String
    let image: String

    var body: some View {
        VStack {
            HStack {
                Spacer() // Creates flexible space before the VStack
                VStack {
                    Text(title)
                        .italic()
                        .bold()
                        .foregroundColor(Color("ColorCherry")) // Sets title color to red and applies italic and bold styles
                    HStack {
                        Text(subtitle)
                            .bold()
                            .font(.title)
                            .foregroundColor(.black) // Sets subtitle color to black, applies bold style, and sets font size to .title
                        Image(systemName: image) // Displays an SF Symbol image specified by the 'image' parameter
                    }
                }
                Spacer() // Creates flexible space after the VStack
            }
            .scaledToFit() // Scales the HStack to fit its contents
            .background(Color("ColorLightBrown")) // Sets the background color of the HStack to brown
            Spacer() // Creates flexible space at the bottom of the VStack
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(title: "BDSFOOD", subtitle: "Bedok South Secondary School", image: "")
    }
}
