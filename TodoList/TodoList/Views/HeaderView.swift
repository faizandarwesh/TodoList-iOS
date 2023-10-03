//
//  HeaderView.swift
//  TodoList
//
//  Created by faizan darwesh on 28/09/2023.
//

import SwiftUI

struct HeaderView: View {
    
    let title : String
    let subtitle : String
    let backgroundColor : Color
    let degrees : Double
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: degrees))
            
            VStack{
                Text(title).font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 36))
                    .foregroundColor(Color.white)
            }.padding(.top,50)
            
            
        }.frame(width: UIScreen.main.bounds.width * 2,height: 350)
            .offset(y:-150)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "To Do List", subtitle: "Get things done", backgroundColor: Color.red, degrees: 15)
    }
}
