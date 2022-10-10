//
//  ContentView.swift
//  10_Practice1
//
//  Created by 권현욱 on 2022/10/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            
            VStack(alignment: .center){
                
                NavigationLink(destination: CircleImage(), label: {
                    Text("Kwon Hyeon Uk")
                        .font(.title)
                        .navigationTitle("First")
                })
                    
                HStack{
                    Text("from Korea")
                        .font(.subheadline)
                    
                    Text("designed by Apple")
                        .font(.subheadline)
                        
                }
                
            }
            
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
