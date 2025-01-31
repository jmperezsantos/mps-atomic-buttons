//
//  SUICustomButton.swift
//  AtomicDesignExample
//
//  Created by Manuel Perez on 25/01/25.
//

import SwiftUI

public struct SUIPrimaryButton: View {
    
    var title:String
    var backgroundColor:Color = Color(red: 25.0/255.0,
                                      green: 82.0/255.0,
                                      blue: 252.0/255.0)
    var action:()->Void
    
    public var body: some View {
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
    SUIPrimaryButton(title: "Click me") {
        print("me presionó")
    }
}
