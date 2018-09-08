//
//  ViewController.swift
//  Dice
//
//  Created by Yotsatornbenz on 6/9/2561 BE.
//  Copyright © 2561 BB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArrayNumber: [Int] = [1,2,3,4,5,6]
    
    @IBOutlet weak var textShow: UILabel!
    
    @IBOutlet weak var diceImage: UIImageView!
    
    @IBOutlet weak var switchButton: UIButton!
    
    @IBOutlet weak var switchSwitch: UISwitch!
    
    @IBAction func isPressed(_ sender: Any) {
        let randomNum = diceArrayNumber.getRandomElement()
        print(randomNum)
        diceImage.image = UIImage(named: "dice"+String(randomNum))
        textShow.text = "I got pressed"
    }
    
    @IBAction func goToMySecret(_ sender: Any) {
        performSegue(withIdentifier: "goPokemon", sender: self)
    }
    
    @IBAction func clickSwitch(_ sender: Any) {
        if switchSwitch.isOn{
            switchButton.isHidden = false;
        }else{
            switchButton.isHidden = true;
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        diceImage.image = #imageLiteral(resourceName: "dice1.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension Array {
    func getRandomElement() -> Int {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return index+1
    }
}

