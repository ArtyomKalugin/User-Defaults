//
//  ViewController.swift
//  user defaults
//
//  Created by Artem Kalugin on 02.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    let userAppSettings = UserAppSettings(isBillByNumber: true, isBillByEmail: false, isBillFromApp: true, isFaceId: false, isAutomaticEnter: true)

    override func viewDidLoad() {
        super.viewDidLoad()
    
        let recode = try! JSONEncoder().encode(userAppSettings)
        defaults.set(recode, forKey: "userAppSettings")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let userData = defaults.value(forKey: "userAppSettings") as! Data
        let userSettings = try! JSONDecoder().decode(UserAppSettings.self, from: userData)
        
        print(userSettings)
    }


}

