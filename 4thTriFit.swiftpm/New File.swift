import SwiftUI

struct PregnancyTabView: View  {
    var body: some View {
        ScrollView {
            
            ZStack {
                Color.black
                    .ignoresSafeArea()
                VStack {
                    NavigationLink(destination: Trimester1View(), label: { Image("trimester1")
                    })
                    
                    NavigationLink(destination: Trimester2View(), label: { Image("trimester2") 
                    })
                        .offset(y: -100)
                    
                    NavigationLink (destination: Trimester3View(), label: {
                        Image("trimester3") 
                    })
                        .offset(y: -190)
                }
                
            }
        }
    }
}
