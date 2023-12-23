import SwiftUI

struct CartPageView: View {
    var body: some View {
        ZStack {
            ZStack {
                Header(title: "BDSFOOD", subtitle: "MY CART", image: "cart.fill")
                    .padding(.top, 10)
            } // ZSTACK

            ZStack {
                HStack {
                    ZStack {
                        ZStack {
                            Text("Order Summary:")
                                .font(.title)
                                .bold()
                                .foregroundColor(.black)
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                                .padding(.leading, 100)

                            Text("Add items")
                                .bold()
                                .foregroundColor(.red)
                                .font(.system(size: 18))
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topTrailing)
                                .padding(.trailing, 100)
                                .padding(.top, 5)
                        } // ZSTACK
                        .padding(.top, 120)
                    } // ZSTACK
                } // HSTACK

                        ZStack {
                            ZStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 900, height: 450)
                                        .foregroundColor(Color.gray)
                                        .opacity(0.4)
                                        .overlay(
                                            ZStack {
                                                ZStack {
                                                    ZStack {
                                                        HStack {
                                                            VStack {
                                                                Text("Items")
                                                                    .bold()
                                                                    .font(.title2)
                                                                    .foregroundColor(.black)
                                                                    .padding(5)
                                                                    .underline()

                                                                Text("• Mac and cheese cream sauce")
                                                                    .bold()
                                                                    .foregroundColor(.black)
                                                                    .padding(40)
                                                                    .font(.system(size: 22))
                                                                    .lineLimit(1)
                                                                    .frame(width: 400)
                                                                    .padding(.top, -15)

                                                                Text("• Cheese stick ")
                                                                    .bold()
                                                                    .foregroundColor(.black)
                                                                    .font(.system(size: 22))
                                                                    .padding(100)
                                                                    .padding(.leading, -150)
                                                                    .padding(.top, -80)
                                                                    .frame(alignment: .leading)
                                                                    .lineLimit(1)
                                                                    .frame(width: 400)
                                                            } // VSTACK

                                                            Spacer()

                                                            VStack {
                                                                Text("Cost")
                                                                    .bold()
                                                                    .foregroundColor(.black)
                                                                    .font(.title2)
                                                                    .padding(5)
                                                                    .underline()
                                                                    .frame(alignment: .center)
                                                                    .font(.system(size: 15))
                                                                    .padding(.leading, -150)
                                                            } // VSTACK

                                                            Spacer()
                                                        } // HSTACK
                                                    } // ZSTACK

                                                    Spacer()
                                                    Spacer()

                                                    HStack {
                                                        Text("Total: $4.50")
                                                            .bold()
                                                            .foregroundColor(.black)
                                                            .padding(130)
                                                            .font(.system(size: 25))

                                                        Button {
                                                            print(" Check Out ")
                                                        } label: {
                                                            Text("Check Out")
                                                                .foregroundColor(Color.blue.opacity(0.8))
                                                                .frame(maxWidth: .infinity, alignment: .topTrailing)
                                                                .padding(120)
                                                                .font(.system(size: 20))
                                                        } // button
                                                    } // hstack

                                                    .padding(.top, 480)
                                                }
                                            }
                                        )
                                }
                            }
                        }
                    }
                }
            }
        }
