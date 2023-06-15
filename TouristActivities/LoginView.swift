//
//  LoginView.swift
//  TouristActivities
//
//  Created by Wiwat Thaphon on 2023-06-12.
//

import SwiftUI

struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        
        // 1
        Button(action: {

            // 2
            configuration.isOn.toggle()

        }, label: {
            HStack {
                // 3
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
             

                configuration.label
            }
        })
    }
}

struct LoginView: View {
    
    @State private var errorMessage:String? = nil
    @State private var linkSelection : Int? = nil
    @State private var isOn = false
    @State private var userEmailFromUI:String = ""
    @State private var userPasswordFromUI:String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                
                NavigationLink(destination: MainListView(), tag : 1, selection: self.$linkSelection){}

                VStack(alignment: .leading, spacing:12) {
                    Text("Email:")
                    TextField("Enter an email", text:$userEmailFromUI)
                        .disableAutocorrection(true)
                        .textInputAutocapitalization(.never)
                        .keyboardType(.default)
                    Text("Password:")
                    TextField("Enter password", text:$userPasswordFromUI)
                        .disableAutocorrection(true)
                        .textInputAutocapitalization(.never)
                        .keyboardType(.phonePad)
                }
                
                VStack {
                    Toggle(isOn: $isOn) {
                        Text("Remember Me")
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                                
                
                Button(action: {
                    self.linkSelection = 1
                    
                    
                }){
                    Text ("LOG IN")
                        .frame(width: 160, height: 28, alignment: .center)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(Color.cyan)
                        .foregroundColor(Color.white)
                }
                
                if let errMsg = errorMessage {
                    Text(errMsg)
                        .foregroundColor(.red)
                        .font(.system(size: 14, weight: .bold, design: .default))
                }
           
            }
            
            .padding()
            .navigationTitle("Tourist Activities")
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
