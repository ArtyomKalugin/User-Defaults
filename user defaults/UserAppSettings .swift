//
//  UserAppSettings .swift
//  user defaults
//
//  Created by Artem Kalugin on 02.11.2021.
//

import Foundation


struct UserAppSettings: Codable {
    
    struct Notifications: Codable {
        var isBillByNumber: Bool
        var isBillByEmail: Bool
        var isBillFromApp: Bool
    }
    
    struct Enter: Codable {
        var isFaceId: Bool
        var isAutomaticEnter: Bool
    }
    
    var notifications: Notifications
    var enter: Enter
    
    init(isBillByNumber: Bool, isBillByEmail: Bool, isBillFromApp: Bool, isFaceId: Bool, isAutomaticEnter: Bool) {
        notifications = Notifications(isBillByNumber: isBillByNumber, isBillByEmail: isBillByEmail, isBillFromApp: isBillFromApp)

        enter = Enter(isFaceId: isFaceId, isAutomaticEnter: isAutomaticEnter)
    }
}
