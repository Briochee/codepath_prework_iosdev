//
//  ViewController.swift
//  codepath_prework_iosdev
//
//  Created by Rio Simpson on 11/23/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var prospect: UILabel!
    @IBOutlet weak var college: UILabel!
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        let contrastColor = contrast(color: randomColor)
        view.backgroundColor = randomColor
        //changing color of button
        myButton.backgroundColor = contrastColor
        myButton.setTitleColor(randomColor, for: .highlighted)

        //setting text color of labels to contrast background
        name.textColor = contrastColor
        college.textColor = contrastColor
        prospect.textColor = contrastColor
        
    }
    
    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0 ... 1)
        let green = CGFloat.random(in: 0 ... 1)
        let blue = CGFloat.random(in: 0 ... 1)
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    func contrast(color: UIColor) -> UIColor {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        return UIColor(red: 1 - red, green: 1 - green, blue: 1 - blue, alpha: alpha)
    }
    
}
