import SwiftUI

struct ContentView: View {
    let data = Album()
    
    var body: some View {
        List(data.tracks) { track in
            TrackRow(track: track)
        }
    }
}


struct Track: Identifiable {
    let id = UUID()
    let title: String
    let artist : String
    let duration : String
    
    let thumbnail = Image(systemName: "heart")
    let gradient: LinearGradient = {
        let colors : [Color] = [.orange, .pink, .purple, .red, .yellow]
        return LinearGradient(gradient: Gradient(colors: [colors.randomElement()!, colors.randomElement()!]), startPoint: .center , endPoint: .topTrailing)
    }()
}

struct Album {
    let tracks = [
        Track(title: "How are you?", artist: "Geeks", duration: "3:47"),
        Track(title: "Attention", artist: "NewJeans", duration: "4:50"),
        Track(title: "Hold my hand", artist: "IU", duration: "3:15"),
        Track(title: "Tomorrow", artist: "IIIBOY(feat. Giriboy, BigNaughty", duration: "4:15"),
        Track(title: "We are", artist: "Woo", duration: "3:30"),
        Track(title: "Turtle", artist: "MC Mong", duration: "3:20")
    ]
}

struct TrackRow : View {
    let track : Track
    
    var body: some View{
        HStack {
            track.thumbnail
                .padding()
                .background(track.gradient)
                .cornerRadius(6)
            Text(track.title)
            Text(track.artist)
                .foregroundColor(.secondary)
                .lineLimit(1)
                .truncationMode(.tail)
            
            Spacer()
            Text("\(track.duration)")
        }
    }
}
