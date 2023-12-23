import SwiftUI

struct AccountPageView: View {
    var body: some View {
        ZStack {
            ZStack {
                Header(title: "BDSFOOD", subtitle: "MY ACCOUNTS", image: "image")
                    .edgesIgnoringSafeArea(.all)
                    .padding()

                VStack {
                    Spacer() // Push the symbol to the top
                    Spacer()
                    Spacer(minLength: 150)

                    Image(systemName: "person.circle")
                        .font(.system(size: 100))
                        .frame(width: 50, height: 50)
                        .alignmentGuide(.bottom) { d in
                            d[.top] // Align the bottom edge of the symbol with the top edge of the VStack
                        }
                        .padding(.bottom, 540)
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)

                VStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 500, height: 60) // Adjust the size as needed
                        .foregroundColor(Color.gray.opacity(0.3))
                        .frame(maxWidth: .infinity, alignment: .bottom)
                        .overlay(
                            ZStack {
                                HStack {
                                    VStack {
                                        Text("Sam")
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .foregroundColor(Color.red.opacity(10))
                                    }
                                }
                            }
                        )
                        .padding(-500)
                }

                VStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 500, height: 60) // Adjust the size as needed
                        .foregroundColor(Color.gray.opacity(0.3))
                        .frame(maxWidth: .infinity, alignment: .bottom)
                        .overlay(
                            ZStack {
                                HStack {
                                    VStack {
                                        Text("[sam_terry1104@gmail.com](mailto:sam_terry1104@gmail.com)")
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .foregroundColor(Color.red.opacity(10))
                                    }
                                }
                            }
                        )
                        .padding(-400)

                    VStack {
                        Spacer()
                        Spacer()
                        Text("Business Account")
                            .bold()
                            .font(.system(size: 40))
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.top)
                        Spacer()
                    }
                }

                VStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 500, height: 60) // Adjust the size as needed
                        .foregroundColor(Color.black.opacity(0.08))
                        .frame(maxWidth: .infinity, alignment: .bottom)
                        .overlay(
                            ZStack {
                                HStack {
                                    VStack {
                                        Button {
                                            print(" Check Out ")
                                        } label: {
                                            Text("Sales Summary")
                                                .frame(maxWidth: .infinity, alignment: .center)
                                                .foregroundColor(Color.red.opacity(10))
                                        }
                                    }
                                }
                            }
                        )
                        .padding(-210)
                }
            }

            VStack {
                Spacer()
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 500, height: 60) // Adjust the size as needed
                    .foregroundColor(Color.black.opacity(0.08))
                    .frame(maxWidth: .infinity, alignment: .bottom)
                    .overlay(
                        ZStack {
                            HStack {
                                VStack {
                                    Button {
                                        print(" Check Out ")
                                    } label: {
                                        Text("Order Queue")
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .foregroundColor(Color.red.opacity(10))
                                    }
                                }
                            }
                        }
                    )
                    .padding(-130)
            }

            VStack {
                Spacer()
                Button {
                    print("Log out")
                } label: {
                    Text("Log out")
                        .foregroundColor(Color.blue.opacity(0.8))
                        .padding(.bottom)
                        .font(.system(size: 28))
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}
