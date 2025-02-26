import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            ZStack {
            Color.black
                VStack {
                    Image("4th tri fit 1")
                        .offset(x: -33, y: 150)
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(height: 400)
                    
                    NavigationLink(destination: HomeView(),  label: {
                        Image("helloButton")
                            
                    })
                  
                        
                }

            
                   
                    
                    
                }
            }
        
    }
}

