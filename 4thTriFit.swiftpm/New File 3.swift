import SwiftUI
struct SheetView2: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            T2Workout()
            Button("Press to dismiss") {
                dismiss()
            }
            .font(.title)
            .padding()
            .offset(y: 400)
            
        }
    }
    
}

struct Trimester2View: View {
    @State private var showingSheet = false
    
    var body: some View {
        ScrollView {
            ZStack {
                Color.teal
                VStack {
                    Image("trimester 2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 800)
                    
                    Button("Show Workout") {
                        
                        showingSheet.toggle()
                    }
                    .font(.title)
                    .background(.white)
                    
                    .sheet(isPresented: $showingSheet) {
                        SheetView1()
                    }
                    
                }
            }
        }
    }
}
