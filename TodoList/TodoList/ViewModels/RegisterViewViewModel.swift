//
//  RegisterViewViewModel.swift
//  TodoList
//
//  Created by faizan darwesh on 28/09/2023.
//

import Foundation

class RegisterViewViewModel : ObservableObject{
    
    @Published var email : String = ""
    @Published var fullName : String = ""
    @Published var password : String = ""
    
    init() {
    }
    
    func validate() -> Bool {
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !fullName.trimmingCharacters(in: .whitespaces).isEmpty,
                !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard !email.contains("@"), !email.contains(".") else {
            return false
        }
         
        guard password.count >= 6 else {
            
        }
        
        return true
                
    }
    
    func register(){
        
        guard validate() else {
            return
        }
    }
}
