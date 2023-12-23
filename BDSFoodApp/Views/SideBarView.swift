import SwiftUI

struct SideBar: View {
    var body: some View {

        ZStack {
            NavigationView {
                ZStack {
                    Rectangle()
                        .frame(width: 250)
                        .foregroundColor(Color(red: 25/255, green: 139/255, blue: 34/255))
                        .overlay(
                            VStack(alignment: .leading) {
                                VStack {
                                    NavigationLink(destination: WesternStall_MainDish()) {
                                        VStack {

                                            Image("yourimagename")
                                                .resizable()
                                                .frame(width: 170, height: 200)
                                                .border(.black, width: 1)

                                            Text("Your Image Text")
                                                .font(.system(size: 20))
                                                .foregroundColor(.black)
                                                .background(Color.gray)
                                        } // VSTACK
                                    } // NAVIGATION
                                } // VSTACK
                                .padding(.leading, 10)
                                VStack {
                                    NavigationLink(destination: WesternStall_MainDish()) {
                                        VStack {

                                            Image("yourimagename")
                                                .resizable()
                                                .frame(width: 170, height: 200)
                                                .border(.black, width: 1)

                                            Text("Your AddOnPage Text")
                                                .font(.system(size: 20))
                                                .foregroundColor(.black)
                                                .background(Color.gray)
                                        } // VSTACK
                                    } // NAVIGATION
                                } // VSTACK
                            } // VSTACK
                        ) // OVERLAY
                } // ZSTACK
            } // Navigation View End
            Header(title: "BDSFoodApp", subtitle: "Western Stall", image: "")
        } // ZSTACK
    }
}

struct SideBar_Previews: PreviewProvider {

    static var previews: some View {

        SideBar()

    }
}
