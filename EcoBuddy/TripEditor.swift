import SwiftUI

struct TripEditor: View {
    let availableItems: [String: Int] = [
        "Shoes": 14,
        "Dress": 22,
        "Jeans": 17,
        "Purse": 14,
        "T-Shirt": 7,
        "Long Sleeve Shirt": 10
    ]
    
    @State private var selectedItem = "Shoes"
    @State private var items: [InventoryItem] = []

    var body: some View {
        NavigationStack {
            VStack() {
                
                List(items) { item in
                    Text("\(item.name) \(item.carbonFootprint)")
                }
                .background(Color.white)

                Picker("Select an item", selection: $selectedItem) {
                    ForEach(availableItems.keys.sorted(), id: \.self) { item in
                        Text(item)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding(.horizontal)

                Button("Add Item") {
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
