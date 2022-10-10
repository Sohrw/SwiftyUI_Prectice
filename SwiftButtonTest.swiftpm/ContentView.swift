import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
        }
        VStack {
            Text("Swift UI")
                .font(.title)
                .padding()
                .foregroundColor(.white)
            Spacer()
            MyButton(title: "Click me!", iconName: "paperplane.circle").padding()
        }
    }
}
struct MyButton : View {
    var title : String
    var iconName : String
    
    var body : some View {
        Button(action : {
            print("zz")
        }) {
            HStack {
                Image(systemName: iconName)
                    .font(.title)
                Text(title)
                    .font(.title)
                    .fontWeight(.semibold)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(40)
        }
    }
}
