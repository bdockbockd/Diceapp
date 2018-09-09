# Easy Dice App and BNK destiny App

Dice app >> Random dice for very beginner 

BNK destiny App >> It predicts which BNK you gonna check hand with?

## Installation
* Xcode 9 
* Vmware WorkStation >> install MacOS High Sierra 10.14

### Requirements
* macOS 
High Sierra 10.13

`$ pip install foobar`

## Language needed >> Swift 4
Swift is a new programming language for
iOS, macOS, watchOS, and tvOS app development

Starter for Swift Language
* Data type 
* Condition type
* Collection type 
* Function 
* Go to this website >> [Swift Basis](http://blog.teamtreehouse.com/an-absolute-beginners-guide-to-swift) 




```python
import foobar

foobar.pluralize('word') # returns 'words'
foobar.pluralize('goose') # returns 'geese'
foobar.singularize('phenomena') # returns 'phenomenon'
```
## Section in Xcode
   * Navigation Pane
     * AppDelegate
     * ViewController
     * Storyboard
     * LauchScreenStoryboard
     * Asset.xcasset
  * Editor pane / Interface Builder
  * Status bar
  * Utility Pane
  * Object Library
  * Debug Area

## Tools for this app
Almost it is how to using object Library when you link object in design page to viewController file. But you need to know what is IBOutlet and IBAction Before.
* IBOutlet (Interface Builder outlet) is a variable which is a reference to a UI component.

* An IBAction (Interface Builder action) is a function which is called when a specific user interaction occurs.

When you interact with the object and want them to do something, then you create an IBAction and define the work inside of it.

But if you want to manipulate button's appearance (change its title, round its corners, change its colour, add a border, or hide it), then you need an IBOutlet.

When you link design with code >> there are three things you need to know and set when making Connection

- 1.Connection

  two types >> outlet/action >> that defines IBOutlet and IBAction

- 2.Name
 
  this is the important one >> you need to set the good Name relating to that function for understanding easily


* Label or textField
```Swift
  labelName.text = "string in this double quote show on screen"
  textFieldName.text = "set string to textField or you can get text input by this too"
```
         
* ImageView >> to set imageView in code
```Swift
  imageName.image = UIImage(named: "string must be name of pic in Asset.xcassets folder")
```

* Using Sender >> if you take many objects in one IBAction >> you can use sender.tag to know which one is pressed
```Swift
  if (sender.tag == the tag number you set first) {
      // do whatever you want here
  }
```
* Switch button
```Swift
   @IBAction func clickSwitch(_ sender: Any) {
        if switchSwitch.isOn {
            // do anything you want when switch on
        }else{
            // do anything you want when switch off
        }
    }
```

* Using Segue and Passing data between VC >> 
```Swift
   // button you set IBaction link to nextViewController
   // do set segue IdentifierName
   // create new ViewController File by Cocoa Touch File
   // link new viewController design to new vc file
   // set performSegue and sender >> self (who pass)

   @IBAction func goToNextViewController(_ sender: Any) {
        performSegue(withIdentifier: "Segue identifier", sender: self)
    }
```
* Randomisation from Array
```Swift
  let index = Int(arc4random_uniform(UInt32(array.count)))

// may be you can create extension Array
extension Array {
    func getRandomElement() -> Element? {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}

// or create func get random number
func createRandomNumber(number: Int) -> Int? {
   return Int(arc4random_uniform(UInt32(number)))    
}

```


## Development
Xcode 10 version beta now >> [Link download](https://developer.apple.com/xcode/) 
