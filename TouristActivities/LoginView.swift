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
    @EnvironmentObject var userDataSource : UserDataSource
    @State var isActive : Bool = false
    
    var body: some View {
        VStack{
            Spacer()
            Text("Activities in Toronto")
                .font(.system(size: 30, weight: .bold, design: .default))
            Spacer()
            VStack(alignment: .leading, spacing:12) {
                Text("Email:")
                TextField("Enter an email", text:$userEmailFromUI)
                    .disableAutocorrection(true)
                    .textInputAutocapitalization(.never)
                    .keyboardType(.default)
                    .padding(.all)
                    .border(Color.gray)
                Text("Password:")
                SecureField("Enter password", text:$userPasswordFromUI)
                    .disableAutocorrection(true)
                    .textInputAutocapitalization(.never)
                    .keyboardType(.phonePad)
                    .padding(.all)
                    .border(Color.gray)
            }
            
            VStack {
                Toggle(isOn: $isOn) {
                    Text("Remember Me")
                }
                .onChange(of: isOn) { value in
                    // action...
                    isOn = value
                }
                .toggleStyle(iOSCheckboxToggleStyle())
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Button(action: {
                for index in 0...self.userDataSource.userList.count-1 {
                    if userEmailFromUI == self.userDataSource.userList[index].email && userPasswordFromUI == self.userDataSource.userList[index].password {
                        if isOn {
                            UserDefaults.standard.set("true", forKey: "USER_REMEMBER")
                        }
                        print("userID = \(self.userDataSource.userList[index].userID)")
                        UserDefaults.standard.set(self.userDataSource.userList[index].userID, forKey: "USER_ID_LOGIN")
                        ActivitiesDataSource.getInstance().setFavoritesList()
                        let window = UIApplication
                            .shared
                            .connectedScenes
                            .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                            .first { $0.isKeyWindow }
                        window?.rootViewController = UIHostingController(rootView: MainListView())
                        window?.makeKeyAndVisible()
                        break
                    }else{
                        self.linkSelection = 0
                    }
                }
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
            Spacer()
            
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
