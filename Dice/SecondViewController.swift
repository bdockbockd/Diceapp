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
    
    // link all design to code

    
    
    // do button to calculate chance to get a hand with BNK you like
    // do randomisation to get a chance
    // using index = Int(arc4random_uniform(UIint32(number))) >> will random the number from 0 to that number
    




    // do some button to reset data





    // do button to go back the firstViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // assign delegate for each one of the textField
        // set all textFieldName.delate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // optional doing
    // touchesBegan >> set all textField to resignFirstResponder

    
    
    
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

