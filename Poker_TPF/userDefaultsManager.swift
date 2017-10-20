//
//  userDefaultsManager.swift
//  Poker_TPF
//
//  Created by eleves on 17-10-18.
//  Copyright © 2017 eleves. All rights reserved.
//



import Foundation // bibliothèque
//------------
// Créer un class et salvagarder une information

class UserDefaultsManager {
    //------
    func doesKeyExist(theKey : String) -> Bool{
        if UserDefaults.standard.object(forKey: "credits") == nil { // salvegarder information sur swift
            return false
        }
        return true
    }
    //-----
    func setKey(theValue: AnyObject, theKey: String){
        UserDefaults.standard.set(theValue, forKey: theKey)
    }
    //-----
    func removeKey(theKey: String){
        UserDefaults.standard.removeObject(forKey: theKey) // remover un object
    }
    //------
    func getValue(theKey: String)-> AnyObject {
        return UserDefaults.standard.object(forKey: theKey) as AnyObject //
    }
    
    
    //-----
}

