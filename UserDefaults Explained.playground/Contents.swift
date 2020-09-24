import UIKit

let defaults = UserDefaults.standard

let dictionaryKey = "MyDictionary"

defaults.setValue(0.24, forKey: "Volume")
defaults.setValue(true, forKey: "MusicOn")
defaults.setValue("Diana", forKey: "PlayerName")
defaults.setValue(Date(), forKey: "AppLastOpenedByUser")

let array = [1, 2, 3]
let ditionary = ["name": "Diana"]

defaults.set(array, forKey: "MyArray")
defaults.set(ditionary, forKey: dictionaryKey)

let volume = defaults.float(forKey: "Volume")
let musicOn = defaults.bool(forKey: "MusicOn")
let name = defaults.string(forKey: "PlayerName")
let appLastOpen = defaults.object(forKey: "AppLastOpenedByUser")
let myArray = defaults.array(forKey: "MyArray") as! [Int]
let myDictionary = defaults.dictionary(forKey: dictionaryKey)
