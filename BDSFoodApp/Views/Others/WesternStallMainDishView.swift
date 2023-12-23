import SwiftUI

struct WesternStall_MainDish: View {

    var body: some View {

        VStack {
            HStack {
                Text("Main Dish")
                    .bold()
                    .font(.system(size: 35))

                Spacer()
            }

            VStack {
                HStack {
                    NavigationLink(destination: WesternStall_MainDish()) {
                        VStack {
                            Image("macaroniMain")
                                .resizable()
                                .modifier(ImageModifier())

                            Text("Macaroni")
                                .modifier(TitleModifier())
                        }
                    }

                    NavigationLink(destination: WesternStall_MainDish()) {
                        VStack {
                            Image("spaghettiMain")
                                .resizable()
                                .modifier(ImageModifier())

                            Text("Spaghetti")
                                .modifier(TitleModifier())
                        }
                    }

                    Spacer()
                }

                HStack {
                    NavigationLink(destination: WesternStall_MainDish()) {
                        VStack {
                            Image("riceMain")
                                .resizable()
                                .modifier(ImageModifier())

                            Text("Rice")
                                .modifier(TitleModifier())
                        }
                    }

                    Spacer()
                }
            }
        }
    }
}
