import SwiftUI

struct SheetView3: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
        T3Workout()
        Button("Press to dismiss") {
            dismiss()
        }
        .font(.title)
        .offset(y: 300)
      
        
    }
    }
    
}




struct Trimester3View: View {
    @State private var showingSheet = false
    
    var body: some View { 
        

        
        ScrollView {
            ZStack {
                Color.teal
                
                VStack{
                Image("trimester 3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 800)
                    
                    
                    Button("Show Workout") {
                        
                        showingSheet.toggle()
                    }
                    .font(.title)
                    .background(.white)
                    
                    .sheet(isPresented: $showingSheet) {
                        SheetView3()
                    }
                    }
                  
            }
            
        }
    }
}
