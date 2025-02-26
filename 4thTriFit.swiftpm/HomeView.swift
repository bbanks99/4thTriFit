import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                VStack {
                    Image("welcomeScreen")
                        .offset(y: 350)
                    
                    NavigationLink(destination: PregnancyTabView(), label: {
                        Image("Pregnant")
                           })
                    .offset(x: 35, y: 275)
                    
                    NavigationLink(destination: PostpartumTabView(), label: {
                    Image("postpartum")
                        
                             })
                    .offset(x: -8, y: -160)

                }
            }
        }
    }
}



