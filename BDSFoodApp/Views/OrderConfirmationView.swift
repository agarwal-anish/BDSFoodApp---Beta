import SwiftUI

struct OrderConfirmationView: View {
    var body: some View {
        ZStack {
            ZStack {
                Header(title: "BDSFOOD", subtitle: "ORDER CONFIRMATION", image: "arrowshape.turn.up.left.fill")
            }

            VStack {
                VStack {

                    Text("Thank you for your order!")
                        .foregroundColor(.black)
                        .frame(width: 300, height: 10, alignment: .center)
                        .padding(10)
                        .font(.system(size: 20))
                        .bold()
                        .multilineTextAlignment(.center)
                        .scaledToFit()

                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                        .font(.system(size: 60))
                        .imageScale(.large)

                    Text("Queue number: \(Text("#3").foregroundColor(.blue))")
                        .foregroundColor(.black)
                        .scaledToFit()
                        .bold()
                        .font(Font.system(size: 18))

                    Text("Order summary")
                        .bold()
                        .foregroundColor(.black)
                        .scaledToFit()
                        .font(Font.system(size: 18))

                } // VSTACK

                ZStack {

                    RoundedRectangle(cornerRadius: 10)// receipt
                        .fill(Color(red: 219/255, green: 219/255, blue: 219/255))
                        .frame(width: 1000, height: 250, alignment: .center)
                        .scaledToFit()
                        .overlay(

                            VStack(alignment: .center) {
                                HStack(spacing: 50) {
                                    VStack(spacing: 10) {

                                        Text("Item")
                                            .bold()
                                            .foregroundColor(.black)
                                            .frame(width: 50, height: 20)
                                            .multilineTextAlignment(.trailing)
                                            .font(Font.system(size: 20))
                                            .padding(.trailing, 0)
                                            .underline()

                                        Text("Mac and Cheese cream sauce")
                                            .foregroundColor(.black)
                                            .bold()
                                            .padding(.horizontal, -80)
                                            .padding(.trailing, 230)
                                            .frame(width: 400, height: 30)
                                            .font(Font.system(size: 18))

                                        Text("Remarks: collecting at 9.30am")
                                            .frame(width: 300, height: 20)
                                            .padding(.trailing, 250)
                                            .padding(.bottom, 15)
                                            .foregroundColor(.blue)

                                        Text("Cheese Stick")
                                            .foregroundColor(.black)
                                            .bold()
                                            .frame(width: 200, height: 20)
                                            .padding(.trailing, 370)
                                            .font(Font.system(size: 18))

                                        Text("Remarks: Collecting at 9.30am")
                                            .foregroundColor(.blue)
                                            .frame(width: 300, height: 20)
                                            .padding(.trailing, 249)

                                    } // VSTACK

                                    Divider()

                                    VStack(spacing: 10) {

                                        Text("Quantity")
                                            .bold()
                                            .foregroundColor(.black)
                                            .scaledToFit()
                                            .underline()
                                            .font(Font.system(size: 20))

                                        Text("x1")
                                            .foregroundColor(.black)
                                            .padding(.top, 2)
                                            .scaledToFit()
                                            .padding(.bottom, 2)
                                            .font(Font.system(size: 18))

                                        Text("x2")
                                            .foregroundColor(.black)
                                            .scaledToFit()
                                            .font(Font.system(size: 18))
                                            .padding(.vertical, 40)

                                    } // VSTACK

                                    Divider()

                                    VStack(spacing: 10) {

                                        Text("Cost")
                                            .bold()
                                            .foregroundColor(.black)
                                            .scaledToFit()
                                            .underline()
                                            .font(Font.system(size: 20))

                                        Text("$2.00")
                                            .foregroundColor(.black)
                                            .padding(.bottom, 20)
                                            .font(Font.system(size: 18))

                                        Text("$2.50")
                                            .foregroundColor(.black)
                                            .padding(.vertical, 30)
                                            .font(Font.system(size: 18))

                                    } // VSTACK
                                } // HSTACK
                            } // VSTACK
                        ) // OVERLAY
                } // ZSTACK

                HStack(spacing: 480) {

                    Text("status: ready for collection")
                        .foregroundColor(.red)
                        .bold()
                        .scaledToFit()
                        .font(Font.system(size: 18))
                        .padding(.horizontal, 75)

                    Text("Total: $4.50")
                        .bold()
                        .foregroundColor(.black)
                        .scaledToFit()
                        .font(Font.system(size: 18))

                } // HSTACK
                Spacer()
            } // VSTACK
        } // ZSTACK
    }
}
