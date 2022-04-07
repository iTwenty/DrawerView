//
//  ContentView.swift
//  DrawerView
//
//  Created by jaydeep on 07/04/22.
//

import SwiftUI

struct ContentView: View {

    @State var isOpen = false

    var body: some View {
        DrawerView(isOpen: $isOpen) {
            Color.red
            Button("Show drawer") {
                withAnimation {
                    isOpen.toggle()
                }
            }
        } drawer: {
            Color.green
            Button("Hide drawer") {
                withAnimation {
                    isOpen.toggle()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
