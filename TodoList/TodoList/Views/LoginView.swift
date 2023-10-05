//
//  LoginView.swift
//  TodoList
//
//  Created by faizan darwesh on 28/09/2023.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel();
    
    var body: some View {
        NavigationView{
            VStack{
                HeaderView(title:"To Do List", subtitle: "Gets things done", backgroundColor: Color.red, degrees: 15)
                
                //Form
                
                Form{
                    TextField("Email address",text:$viewModel.email).textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password",text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    CustomButton(title: "Log In",color: Color.primary){
                        //Attempt to login
                        viewModel.login()
                    }
                    
                }
                   
                
                VStack{
                    Text("New around here")
                     NavigationLink("Create an account?", destination: RegisterView())
                    
                }.padding(.bottom,50)
                
                Spacer()
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
