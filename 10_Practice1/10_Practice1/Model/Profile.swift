//
//  Profile.swift
//  10_Practice1
//
//  Created by κΆνμ± on 2022/10/12.
//

import Foundation

struct Profile {
    var username : String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "Kwon")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "π·"
        case summer = "π"
        case autumn = "π"
        case winter = "βοΈ"
        
        var id: String { rawValue }
    }
}
