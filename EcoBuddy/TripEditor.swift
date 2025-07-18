import SwiftUI
import SwiftData


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
    
    @State private var items: [(String, Int)] = []
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color(red: 0.748, green: 0.854, blue: 0.857)
                    .ignoresSafeArea()
                
                
                VStack {
                    List {
                        ForEach(Array(items.enumerated()), id: \.offset) { index, item in
                            HStack {
                                Text("+")
                                Text(item.0)
                                Spacer()
                                Text("\(item.1)")
                            }
                        }
                        .onDelete(perform: deleteItem)
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
                            items.append((selectedItem, footprint))
                        }
                        
                    }
                } //closes VStack
                .navigationTitle("Items & Footprint")
                .padding()
            }
        }
    } //closes Body
    func deleteItem(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

        #Preview {
            TripEditor()
        }

