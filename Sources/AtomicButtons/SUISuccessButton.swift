//
//  SUICustomButton.swift
//  AtomicDesignExample
//
//  Created by Manuel Perez on 25/01/25.
//

import SwiftUI

struct SUISuccessButton: View {
    
    var title:String
    var backgroundColor:Color = Color(red: 29.0/255.0,
                                      green: 118.0/255.0,
                                      blue: 67.0/255.0)
    var action:()->Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .padding()
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .foregroundColor(.white)
                .cornerRadius(8)
        }.padding(.horizontal)
    }
}

#Preview {
    SUISuccessButton(title: "Click me") {
        print("me presionó")
    }
}
