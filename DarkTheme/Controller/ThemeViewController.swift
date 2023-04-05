//
//  ThemeViewController.swift
//  DarkTheme
//
//  Created by kvelde.niklavs.ansis on 03/04/2023.
//

import UIKit

class ThemeViewController: UIViewController {
    
    @IBOutlet weak var darkButton: UIButton!
    var mainText: String = "Dark Theme On"
    var darkIsOn: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        darkButton.layer.cornerRadius = 8
    }
    
    @IBAction func darkThemeButtonTapped(_ sender: Any) {
        
        darkIsOn.toggle()
        darkThemeIsOn(isOn: darkIsOn)
        
    }
    func darkThemeIsOn(isOn: Bool){
        if isOn {
            mainText = "Dark Theme Off"
            darkButton.setTitle(mainText, for: .normal)
            darkButton.setTitleColor(UIColor.white, for: .normal)
            navigationItem.title = mainText
            view.backgroundColor = UIColor.black
        } else {
            mainText = "Dark Theme On"
            darkButton.setTitle(mainText, for: .normal)
            darkButton.setTitleColor(UIColor.black, for: .normal)
            navigationItem.title = mainText
            view.backgroundColor = UIColor.white
        }
        
    }
}
