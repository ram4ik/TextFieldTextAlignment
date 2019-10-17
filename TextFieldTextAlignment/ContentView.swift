//
//  ContentView.swift
//  TextFieldTextAlignment
//
//  Created by ramil on 17.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var textFieldData1 = "Leading"
    @State private var textFieldData2 = "Center"
    @State private var textFieldData3 = "Trailing"
    var body: some View {
        VStack(spacing: 20) {
            Text("TextField").font(.largeTitle)
            Text("Text Aligment").font(.title).foregroundColor(.gray)
            Text("Change the aligment of text within your textfield by using the multilineTextAligment modifier.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.orange)
                .font(.title)
            
            Group {
                TextField("Leading", text: $textFieldData1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.leading) // Default
                
                TextField("Center", text: $textFieldData2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.center)
                
                TextField("Trailing", text: $textFieldData3)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.trailing)
            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
