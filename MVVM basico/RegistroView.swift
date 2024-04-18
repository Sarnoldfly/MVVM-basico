//
//  RegistroView.swift
//  MVVM basico
//
//  Created by Mac on 18/4/24.
//

import SwiftUI
import SwiftData

struct RegistroView: View {
    @StateObject var viewModel = RegistroViewModel()

    var body: some View {
        VStack{
            TextField("Nombre de Usuario", text: $viewModel.userName)
            
            SecureField("Password", text: $viewModel.userPassword)
            
            Button(action: {
                viewModel.Registrar()
            }, label: {
                Text("REGISTRAR")
            })
            
        }
        .padding()
    }
}

#Preview {
    RegistroView()
        .modelContainer(for: Item.self, inMemory: true)
}
