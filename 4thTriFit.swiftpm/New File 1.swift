import SwiftUI

struct SheetView4: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            T4Workout()
            Button("Press to dismiss") {
                dismiss()
            }
            .font(.title)
            .padding()
            .offset(y: 350)
            
            
        }
    }
    
}

struct PostpartumTabView: View {
    @State private var showingSheet = false
    
    var body: some View {
        ScrollView {
            
            ZStack {
                Color.teal
                VStack {
                    Image("newborn 1")
                    
                        .offset(y: 50)
                    Image("postpartumInfo")
                        .offset(y: -120)
                    Button("Show Workout") {
                        
                        showingSheet.toggle()
                    }
                    .font(.title)
                    .background(.white)
                    
                    .sheet(isPresented: $showingSheet) {
                        SheetView4()
                    }
                    
                }
            }
            
        }
        
    }
}
