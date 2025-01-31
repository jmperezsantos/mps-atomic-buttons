//
//  SUICustomButton.swift
//  AtomicDesignExample
//
//  Created by Manuel Perez on 25/01/25.
//

import SwiftUI

public struct SUIWarningButton: View {
    
    var title:String
    var backgroundColor:Color = Color(red: 255/255.0,
                                      green: 187/255.0,
                                      blue: 46/255.0)
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
    SUIWarningButton(title: "Click me") {
        print("me presionó")
    }
}
