//
//  LoginView.swift
//  Software Project New Part
//
//  Created by Christopher Sandoval Terry on 5/9/23.
//

import SwiftUI

struct LoginView: View
{
    @State private var userName = ""
    @State private var passWord = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginscreen = false
            

var body: some View
{
        NavigationView{
        ZStack
        {
            Color.brown
                .ignoresSafeArea()
            Circle()
                .scale(1.7)
                .foregroundColor(.white.opacity(0.15))
            Circle()
                .scale(1.35)
                .foregroundColor(.white.opacity(0.15))
                        
            VStack
            {
                
                Text("Login")
                .font(.largeTitle)
                .foregroundColor(.black.opacity(0.65))
                .bold()
                .padding()
                .padding()
                .padding()
                
                
                TextField("Username", text: $userName)
                    .padding()
                    .frame(width: 300,height: 50)
                    .background(Color.white.opacity(1.0))
                    .cornerRadius(10)
                    .border(.red,width: CGFloat(wrongUsername))
                
                SecureField("Password", text: $passWord)
                    .padding()
                    .frame(width: 300,height: 50)
                    .background(Color.white.opacity(1.0))
                    .cornerRadius(10)
                    .border(.red,width: CGFloat(wrongPassword))
                    .padding()
                Button("Login")
                {
                    authenticateUser(userName: userName, passWord: passWord)
                }
                    .padding()
                    .foregroundColor(.black)
                    .font(.title2)
                    .frame(width: 200,height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
                NavigationLink (destination: Text("You are logged in @\(userName)"), isActive:$showingLoginscreen)
                {
                    EmptyView()
                }
                
                Button("Sign Up")
                {
                 
                }
                .font(.title3)
               // NavigationLink()
               /* {
                    EmptyView()
                }*/
               
                    
                
            }
        }
                    
                    
    }
        .navigationBarHidden(true)
        
    }
    
    func authenticateUser(userName:String,passWord:String)
    {
        if userName.lowercased() == "software"
        {
            wrongUsername = 0
            
        }
        else
        {
            wrongUsername = 2
        }
        if passWord.lowercased() == "123"
        {
            wrongPassword = 0
            showingLoginscreen = true
        }
        else
        {
            wrongPassword = 2
        }
        
            
        
    }
}

        struct LoginView_Previews: PreviewProvider {
            static var previews: some View {
                LoginView()
            }
        }


