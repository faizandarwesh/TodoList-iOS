//
//  LoginView.swift
//  TodoList
//
//  Created by faizan darwesh on 28/09/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var email : String = ""
    @State var password : String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                HeaderView(title:"To Do List", subtitle: "Gets things done", backgroundColor: Color.red, degrees: 15)
                
                //Form
                
                Form{
                    TextField("Email address",text:$email).textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password",text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button{
                        
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Login").foregroundColor(Color.white).bold()
                        }
                    }.padding()
                    
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
