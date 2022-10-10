import SwiftUI


enum Mood : String {
    case happy = "😄"
    case sad = "😭"
    case angry = "😡"
    case updown = "😵‍💫"
}
struct ContentView: View {
    @State var name :String = "Hello!"
    @State var favoriteColor : Color = .green
    @State var mood : Mood = .happy
    
    var body: some View {
        VStack {
            StatusControl(name: $name, favoriteColor: $favoriteColor, mood: $mood)
            StatusIcon(name: name, favoriteColor: favoriteColor, mood: mood)
        }
    }
}

struct StatusControl: View {
    @Binding var name : String
    @Binding var favoriteColor : Color
    @Binding var mood : Mood
    var body: some View {
        HStack {
            TextField("Name", text: $name)
            ColorPicker("Favorite Color", selection: $favoriteColor)
            Picker("Mood", selection: $mood) {
                Text(Mood.happy.rawValue).tag(Mood.happy)
                Text(Mood.sad.rawValue).tag(Mood.sad)
                Text(Mood.angry.rawValue).tag(Mood.angry)
                Text(Mood.updown.rawValue).tag(Mood.updown)
            }
            .pickerStyle(SegmentedPickerStyle())
        }.padding()
    }
}

struct StatusIcon : View {
    let name : String
    let favoriteColor : Color
    let mood : Mood
    
    var body : some View {
        VStack {
            VStack{
                Text(mood.rawValue)
                Text(name)
                    .foregroundColor(.white)
            }
            .font(.largeTitle)
            .padding()
            .background(favoriteColor)
            .cornerRadius(12)
        }.padding()
    }
}
