//
//  SecondViewController.swift
//  Dice
//
//  Created by Yotsatornbenz on 7/9/2561 BE.
//  Copyright © 2561 BB. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var bnkName: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var BNKPicture: UIImageView!
    @IBOutlet weak var resultChance: UILabel!
    @IBAction func findBNK(_ sender: UIButton) {
        if (bnkName.text == "" || gender.text == "" || age.text == "")
        {
            resultChance.text = "Pls input Correctly"
        } else {
            let chance = Int(arc4random_uniform(UInt32(100)))
            resultChance.text = bnkName.text! + " " + String(chance) + "%"
        }
    }
    @IBAction func clearData(_ sender: UIButton) {
        gender.text = ""
        bnkName.text = ""
        age.text = ""
        resultChance.text = "TRY AGAIN"
    }
    @IBAction func goBack(_ sender: Any) {
        performSegue(withIdentifier: "goBackToFirstPage", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // assign delegate for each one of the textField
        gender.delegate = self as? UITextFieldDelegate
        bnkName.delegate = self as? UITextFieldDelegate
        age.delegate = self as? UITextFieldDelegate
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        age.resignFirstResponder()
    }
    
    func getRandomElement() -> Int {
        let index = Int(arc4random_uniform(UInt32(100)))
        return index+1
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ViewController: UITextFieldDelegate {
    // when use use ASCII keyboard >> it has return key so we need to cancel or dismiss it
    // when you touch textField >> it becomes the firt responder
    // and accepting events or waiting user >> when resign >> dismiss the action of hierrachy // set up to conform to the protocol
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
}

