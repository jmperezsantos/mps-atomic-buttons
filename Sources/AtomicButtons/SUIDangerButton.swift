//
//  SUICustomButton.swift
//  AtomicDesignExample
//
//  Created by Manuel Perez on 25/01/25.
//

import SwiftUI

public struct SUIDangerButton: View {
    
    var title:String
    var backgroundColor:Color = Color(red: 222/255.0,
                                      green: 46/255.0,
                                      blue: 63/255.0)
    var action:()->Void
    
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
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
    SUIDangerButton(title: "Click me") {
        print("me presionó")
    }
}
