import SwiftUI
import SwiftData


struct TripEditor: View {
  let availableItems: [String: Int] = [
    "Shoes": 14,
    "Dress": 22,
    "Jeans": 17,
    "Purse": 14,
    "T-shirt": 7,
    "Long Sleeve Shirt": 10
  ]
  @State private var selectedItem = "Shoes"
  @State private var items: [InventoryItem] = []
  var body: some View {
      NavigationStack {
          
          ZStack {
              Color(red: 0.748, green: 0.854, blue: 0.857)
                  .ignoresSafeArea()
              
              
              VStack() {
                  List(items) { item in
                      HStack {
                          Text("+")
                          Text(item.name)
                          Spacer()
                          Text("\(item.carbonFootprint)")
                      }
                      
                  }
                  .background(Color(red: 0.708, green: 0.819, blue: 0.459))
                  .shadow(radius: 5)
                  .listStyle(PlainListStyle())
                  Picker("Select an item", selection: $selectedItem) {
                      ForEach(availableItems.keys.sorted(), id: \.self) { item in
                          Text(item)
                      }
                  }
                  .pickerStyle(MenuPickerStyle())
                  .padding(.horizontal)
                  Button("Save") {
                      if let footprint = availableItems[selectedItem] {
                          items.append(InventoryItem(name: selectedItem, carbonFootprint: footprint))
                      }
                      
                  }
              } //closes VStack
              .navigationTitle("Items")
              .padding()
          } //closes Navigation
      }
  } //closes Body
}
#Preview {
  TripEditor()
}






