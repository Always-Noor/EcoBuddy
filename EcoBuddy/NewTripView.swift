import SwiftUI

struct NewTripView: View {
    var body: some View {
        VStack {
            Text("New trip:")
                .font(.title)
                .fontWeight(.bold)
            TextField("Name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
        }
    }
}

#Preview {
    NewTripView()
}
