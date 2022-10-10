import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            VStack {
                Text("Hello!")
                    .navigationTitle("First")
                NavigationLink(
                    destination: NextView(),
                    label: {
                        Text("Navigation")
                })
            }
            
            
        }
    }
}

struct NextView : View {
    var body : some View {
        Text("Second")
        
        NavigationLink(
            destination: FinalView(), label: {
                Text("Navigate")
            })
    }
}

struct FinalView : View {
    var body : some View {
        Text("Final and Third")
        
    }
}
