//
//  _0_Practice1App.swift
//  10_Practice1
//
//  Created by 권현욱 on 2022/10/10.
//

import SwiftUI

@main
struct _0_Practice1App: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
