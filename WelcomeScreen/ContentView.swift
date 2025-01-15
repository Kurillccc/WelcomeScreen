//
//  ContentView.swift
//  WelcomeScreen
//
//  Created by Кирилл on 15.01.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct HelloView: View {
    var body : some View {
        VStack{
            SwiftUIView().offset(y: -40)
            VStack(alignment: .center){
                Text("Добро пожаловать!").font(.largeTitle).foregroundColor(.blue)
                Text("AIra – умный помощник для дизайнеров").font(.subheadline).padding(.top, 1).padding(.horizontal, 30).multilineTextAlignment(.center).lineLimit(nil).fixedSize(horizontal: false, vertical: true).frame(maxWidth:.infinity)
            }
        }.offset(y: -30)
        
        
    }
}

#Preview {
    HelloView()
}
