//
//  ContentView.swift
//  iExpense
//
//  Created by Cloutier, Vincent on 2020-10-08.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    var name: String

    var body: some View {
        Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    var body: some View {
        Button("Show Sheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "@twostraws")        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
