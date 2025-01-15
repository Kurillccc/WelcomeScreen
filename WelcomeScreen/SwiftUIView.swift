//
//  SwiftUIView.swift
//  WelcomeScreen
//
//  Created by Кирилл on 15.01.2025.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Image("image").resizable().frame(width: 120, height: 120).clipShape(RoundedRectangle(cornerRadius: 35))
    }
}

#Preview {
    SwiftUIView()
}
