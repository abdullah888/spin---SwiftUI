//
//  ContentView.swift
//  SwiftUI1
//
//  Created by abdullah  on 16/05/1441 AH.
//  Copyright © 1441 abdullah . All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var spin = false
    var body: some View {
        Image("spinner")
        .resizable()
            .frame(width : 128 , height: 128)
            .rotationEffect(.degrees(spin ? 360 : 0))
            .animation(.spring(response: 0.01, dampingFraction: 0.001, blendDuration: 0.8))
            .onAppear(){
                self.spin.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
