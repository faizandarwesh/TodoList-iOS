//
//  RegisterView.swift
//  TodoList
//
//  Created by faizan darwesh on 28/09/2023.
//

import SwiftUI

struct RegisterView: View {
   
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            HeaderView(title: "Register", subtitle: "Start organizing todos", backgroundColor: Color.green, degrees: -15)
            
            Form{
                TextField("Full Name",text:$viewModel.fullName).textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Email Address",text:$viewModel.email).textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Password",text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                CustomButton(title: "Create Account",color: Color.primary){
                    //attempt to register
                }
                
            }
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
