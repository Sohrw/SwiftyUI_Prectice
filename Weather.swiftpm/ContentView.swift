import SwiftUI

struct Weather {
    struct Forecast {
        let hour : String
        let conditions : Image
        let temperature : String
    }
    
    let hourlyForecast = [
        Forecast(hour: "8AM", conditions: Image(systemName: "sun.max.fill"), temperature: "25°C"),
        Forecast(hour: "9AM", conditions: Image(systemName: "cloud.sun.fill"), temperature: "23°C"),
        Forecast(hour: "10AM", conditions: Image(systemName: "sun.max.fill"), temperature: "27°C"),
        Forecast(hour: "11AM", conditions: Image(systemName: "cloud.fill"), temperature: "22°C"),
        Forecast(hour: "12PM", conditions: Image(systemName: "cloud.rain.fill"), temperature: "17°C")
    ]
}

struct Panel : View {
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            VStack(alignment: .leading) {
                Text("Seoul").font(.title3)
                Text("18°C").font(.largeTitle)
            }.padding()
            Spacer()
            
            VStack {
                Image(systemName: "sun.max.fill").renderingMode(.original)
                Text("Sunny")
                Text("High : 27°C Low : 17°C")
            }.padding()
        }
    }
}

struct ContentView: View {
    let weather = Weather()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Panel()
            Divider()
            HStack {
                ForEach(weather.hourlyForecast, id: \.hour) { forecast in
                    Spacer()
                    Forecast(data: forecast)
                    Spacer()
                }
            }
        }
        .padding()
        .foregroundColor(.white)
        .background(Color(.lightGray))
    }
}

struct Forecast : View {
    let data : Weather.Forecast
    
    var body: some View {
        VStack {
            Text(data.hour)
            
            data.conditions
                .renderingMode(.original)
                .frame(height: 30)
            
            Text(data.conditions)
        }
    }
}
