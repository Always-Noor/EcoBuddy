import SwiftUI

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
            VStack() {
                
                List(items) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Text("\(item.carbonFootprint)")
                    }
                }
                .background(Color.white)
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
            }
            .navigationTitle("Items")
            .padding()
        }
    }
}

#Preview {
    TripEditor()
}
