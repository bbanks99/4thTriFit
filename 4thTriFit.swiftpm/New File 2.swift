import SwiftUI

struct SheetView1: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            T1Workout()
            Button("Press to dismiss") {
                dismiss()
            }
            .font(.title)
            .padding()
            .offset(y: 200)
            
        }
    }
    
}
struct Trimester1View: View {
    @State private var showingSheet = false
    
    var body: some View {
        ScrollView {
            ZStack {
                Color.teal
                VStack {
                    Image("trimester 1")
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
