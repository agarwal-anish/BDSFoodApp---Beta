import SwiftUI

struct OrderItem: View {
  let item: String
  let item2: String
  let remarks: String
  let number: String
  let username: String
  let cost: String
  let isCompleted: Bool

  var body: some View {
    RoundedRectangle(cornerRadius: 30)
      .frame(width: 845, height: 200)
      .foregroundColor(Color.gray)
      .opacity(0.75)
      .aspectRatio(1.5, contentMode: .fit)
      .frame(maxWidth: .infinity, alignment: .leading)
      .overlay(
        ZStack {
          HStack {
            VStack {
              Text("Item")
                .modifier(OrderQueueModifier())
              Text(item)
                .modifier(OrderQueueTextModifier())
              Item2View(item2: item2)
            }
            .frame(minHeight: 185, alignment: .top)
            Divider()
            VStack {
              Text("Remarks")
                .bold()
                .foregroundColor(.black)
                .padding(.bottom, -12)
                .underline()
                .font(.system(size: 30))
                .italic()
                .frame(maxWidth: .infinity)
              Text(remarks)
                .foregroundColor(Color.black)
                .font(.system(size: 40))
              Text(number)
                .foregroundColor(Color.blue)
                .font(.system(size: 25))
                .bold()
                .padding(.bottom, -10)
              Text(username)
                .foregroundColor(Color.red)
                .font(.system(size: 28))
                .padding(.bottom)
            }
            .frame(minHeight: 185, alignment: .top)
            Divider()
            VStack {
              Text("Cost")
                .bold()
                .foregroundColor(.black)
                .padding(.top, 7)
                .underline()
                .font(.system(size: 30))
                .frame(maxWidth: .infinity)
                .italic()
              Text(cost)
                .foregroundColor(Color.black)
                .bold()
                .font(.system(size: 40))
                .padding(.bottom, 140)
                .padding(.top, 10)
            }
            .frame(minHeight: 185, alignment: .top)
            HStack {
              Image(systemName: isCompleted ? "checkmark.circle" : "xmark.circle")
                .bold()
                .foregroundColor(isCompleted ? .green : .red)
                .font(.system(size: 130))
                .padding()
                .frame(maxWidth: .infinity, alignment: .trailing)
              Spacer()
            }
          }
        }
      )
      .padding(.leading, 10)
  }
}

struct OrderQueueView: View {
  var body: some View {
    ZStack {
      VStack {
        HStack {
          Image(systemName: "arrowshape.turn.up.left.fill")
            .font(.system(size: 35))
            .foregroundColor(.black)
          Spacer()
          VStack {
            Text("BDSFOOD")
              .italic()
              .bold()
              .foregroundColor(.red)
            Text("ORDER QUEUES")
              .bold()
              .font(.system(size: 30))
              .foregroundColor(.black)
          }
          Spacer()
        }
        .scaledToFit()
        .padding()
        .background(.brown)
        ScrollView {
          VStack {
            OrderItem(item: "x1 macaroni chicken cutlet sauce", item2: "x1 potato mini", remarks: "09:00", number: "Queue no: 001", username: "Sam", cost: "$ 3.70", isCompleted: true)
            OrderItem(item: "x1 mac black sauce fish dowry", item2: "x1 mash potato", remarks: "09:00", number: "Queue no: 002", username: "Sam", cost: "$ 4.00", isCompleted: false)
            OrderItem(item: "x1 macaroni cheese and tomato", item2: "x1 cheese stick", remarks: "09:05", number: "Queue no: 003", username: "Sam", cost: "3.70", isCompleted: false)
            OrderItem(item: "x1 pasta chicken tomato sauce", item2: "x1 cheese pasta", remarks: "09:15", number: "Queue no: 004", username: "Sam", cost: "$ 2.50", isCompleted: true)
            OrderItem(item: "x1 macaroni cream pasta sauce ", item2: "x1 chicken pasta", remarks: "09:20", number: "Queue no: 005", username: "Sam", cost: "$ 2.50", isCompleted: true)

                    }
                }
            }
        }
    } // ScrollView CLOSE bracket
}

#Preview {
    OrderQueueView()
}
