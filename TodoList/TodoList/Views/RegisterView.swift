//
//  RegisterView.swift
//  TodoList
//
//  Created by faizan darwesh on 28/09/2023.
//

import SwiftUI

struct RegisterView: View {
   
    @State var email : String = ""
    @State var password : String = ""
    @State var phoneNumber : String = ""
    
    
    var body: some View {
        VStack{
            HeaderView(title: "Register", subtitle: "Start organizing todos", backgroundColor: Color.green, degrees: -15)
            
            Form{
                TextField("Email address",text:$email).textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Phone Number",text:$phoneNumber).textFieldStyle(RoundedBorderTextFieldStyle())
                
            SecureField("Password",text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button{
                    
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        
                        Text("Register").foregroundColor(Color.white).bold()
                    }
                }.padding()
                
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
