//
//  SecondViewController.swift
//  Dice
//
//  Created by Yotsatornbenz on 7/9/2561 BE.
//  Copyright © 2561 BB. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
    
    let nameBNK: [String] = ["can","cherprang","izurina","jaa","jane","jennis","jib","kaew","kaimook","kafe","korn","maysa","mind","mobile","music","namnueng","namsai","nink","orn","piam","pun","Pupe","satchan","tarwaan"]
    
    @IBOutlet weak var yourName: UITextField!
    @IBOutlet weak var yourGender: UITextField!
    @IBOutlet weak var bnkName: UITextField!
    @IBOutlet weak var yourSurname: UITextField!
    @IBOutlet weak var yourAge: UITextField!
    @IBOutlet weak var BNKPicture: UIImageView!
    @IBOutlet weak var resultChance: UILabel!
    @IBAction func findBNK(_ sender: UIButton) {
        if (bnkName.text! == "" || yourGender.text! == "" || yourAge.text == "" || !nameBNK.contains((bnkName.text!.lowercased())))
        {
            resultChance.text = "Pls input Correctly"
        } else {
            BNKPicture.image = UIImage(named: bnkName.text!.lowercased())
            let chance = Int(arc4random_uniform(UInt32(100)))
            resultChance.text = bnkName.text! + " " + String(chance) + "%"
        }
    }
    @IBAction func clearData(_ sender: UIButton) {
        yourGender.text = ""
        bnkName.text = ""
        yourAge.text = ""
        yourName.text = ""
        yourSurname.text = ""
        resultChance.text = "TRY AGAIN"
    }
    @IBAction func goBack(_ sender: Any) {
        performSegue(withIdentifier: "goBackToFirstPage", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // assign delegate for each one of the textField
        yourGender.delegate = self
        bnkName.delegate = self
        yourAge.delegate = self
        yourName.delegate = self
        yourSurname.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        yourAge.resignFirstResponder()
        yourGender.resignFirstResponder()
        yourName.resignFirstResponder()
        yourSurname.resignFirstResponder()
        bnkName.resignFirstResponder()
    }
    
    
    
    func getRandomElement() -> Int {
        let index = Int(arc4random_uniform(UInt32(100)))
        return index+1
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("Allow Editing")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("User is editing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("editing is done")
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("editor was pressed")
        return true
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

// addUITextFieldDelegate to do conforms the protocol
extension ViewController: UITextFieldDelegate {
    // when use use ASCII keyboard >> it has return key so we need to cancel or dismiss it
    // when you touch textField >> it becomes the firt responder
    // and accepting events or waiting user >> when resign >> dismiss the action of hierrachy // set up to conform to the protocol
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
}

