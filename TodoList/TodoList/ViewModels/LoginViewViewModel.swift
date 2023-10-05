//
//  LoginViewViewModel.swift
//  TodoList
//
//  Created by faizan darwesh on 28/09/2023.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel : ObservableObject{
  
    @Published var email : String = ""
    @Published var password : String = ""
    
    init(){}
    
    func validate() -> Bool {
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty
        else {
            return false
        }
        
        guard email.contains("@"),email.contains(".") else {
            return false
        }
        
        guard password.count > 8 else {
            return false
        }
        
        return true
        
    }
    
    func login(){
        
        guard validate() else {
            return
        }
        
        print("valid credentials")
        //try login
        
        Auth.auth().signIn(withEmail: email, password: password)
        
    }

}
