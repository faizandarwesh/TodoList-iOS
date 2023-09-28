//
//  TodoListApp.swift
//  TodoList
//
//  Created by faizan darwesh on 28/09/2023.
//

import FirebaseCore
import SwiftUI

@main
struct TodoListApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
