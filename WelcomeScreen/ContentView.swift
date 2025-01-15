//
//  ContentView.swift
//  WelcomeScreen
//
//  Created by Кирилл on 15.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State var goToAuthView: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                if goToAuthView == true {
                    AuthView()
                        .transition(.move(edge: .trailing))
                }
                else {
                    HelloView (goToAuthView: $goToAuthView)
                        .transition(.move(edge: .leading))
                }
            }
        }.animation(.easeInOut(duration: 0.5), value: goToAuthView)
            .navigationTitle("")
            .navigationBarHidden(true)
    }
}

struct HelloView: View {
    @Binding var goToAuthView: Bool
    
    var body : some View {
        Spacer()
        
        VStack{
            FirstImView().offset(y: -10)
            VStack(alignment: .center){
                Text("Добро пожаловать!")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                Text("AIra – умный помощник для дизайнеров")
                    .font(.subheadline)
                    .padding(.top, 1)
                    .padding(.horizontal, 30)
                    .multilineTextAlignment(.center).lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxWidth:.infinity)
                    .foregroundColor(.gray)
            }
        }.offset(y: -30)
        
        Spacer()
        
        VStack{
            Button(action: {
                withAnimation {
                    goToAuthView = true
                }
            }){
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.black)
                    .frame(height: 60)
                    .overlay {
                        Text("Далее")
                            .font(.title2)
                            .foregroundColor(.white)
                    }.padding(.horizontal, 40)
            }
        }.offset(y: -20)
    }
}

struct AuthView: View {
    var body : some View {
        Spacer()
        
        VStack{
            LogImView().offset(y: -10)
            VStack(alignment: .center){
                Text("Авторизация")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                Text("Для дальнейшего использования приложения нужно авторизоваться с помощью номера телефона")
                    .font(.subheadline).padding(.top, 1)
                    .padding(.horizontal, 30)
                    .multilineTextAlignment(.center).lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxWidth:.infinity)
                    .foregroundColor(.gray)
            }
        }.offset(y: -30)
        
        Spacer()
        
        VStack{
            Button(action:{}){
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.black)
                    .frame(height: 60)
                    .overlay {
                        Text("Войти")
                            .font(.title2)
                            .foregroundColor(.white)
                    }.padding(.horizontal, 40)
            }
        }.offset(y: -20)
    }
}


#Preview {
    AuthView()
}
