//
//  RegistroViewModel.swift
//  MVVM basico
//
//  Created by Mac on 18/4/24.
//


//import SwiftUI
//
//class RegistroViewModel: ObservableObject {
//    
//    @Published var userName: String = ""
//    @Published var userPassword: String = ""
//    
//    func registrar(userName: String, userPassword: String) {
//        print("Registrando usuario con nombre: \(userName) y contraseña: \(userPassword)")
//    }
//}
//
//let viewModel = RegistroViewModel()
//viewModel.registrar(userName: "usuario", userPassword: "contraseña")













import SwiftUI

class RegistroViewModel : ObservableObject {
    
    @Published var userName : String = ""
    @Published var userPassword: String = ""
    
    
    func Registrar() {
        let userModel = UserModel(userName: userName, userPassword: userPassword)

        print("Registrando usuario: \(userModel)")


    }
}
//tengo que crer una variable del tiopo de modelo.



    


