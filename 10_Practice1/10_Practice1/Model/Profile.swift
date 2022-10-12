//
//  Profile.swift
//  10_Practice1
//
//  Created by 권현욱 on 2022/10/12.
//

import Foundation

struct Profile {
    var username : String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "Kwon")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}
