//
//  ContentView.swift
//  Form_Demo
//
//  Created by Anmol Maheshwari on 12/05/20.
//  Copyright © 2020 Anmol Maheshwari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var enableBlogger = true
    var body: some View {
        NavigationView {
            Form {
                Image("anmol")
                .resizable()
                .clipped()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 2.0))
                
                Section(header: Text("Basic Information")) {
                    HStack {
                        Text("First Name")
                        Spacer(minLength: 100)
                        Text("Anmol")
                    }
                    HStack {
                        Text("Last Name")
                        Spacer(minLength: 100)
                        Text("Maheshwari")
                    }
                }
                
                Section(header: Text("Additional")) {
                    HStack {
                        Text("Gender")
                        Spacer(minLength: 100)
                        Text("Male")
                    }
                    Toggle(isOn: $enableBlogger) {
                        Text("Blogger")
                    }
                }
            }.navigationBarTitle(Text("Profile"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
