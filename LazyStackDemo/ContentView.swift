//
//  ContentView.swift
//  LazyStackDemo
//
//  Created by Shunzhe Ma on R 2/11/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
//        ContentView_VStack()
//        ContentView_LazyVStack()
//        ContentView_LazyHStack()
        ContentView_List()
//        ContentView_Form()
        
    }
    
}

struct ContentView_VStack: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(Networking.shared.getAllCatIDs(), id: \.self) { catID in
                    ItemDisplay(catID: catID)
                }
            }
        }
    }
}

struct ContentView_LazyVStack: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(Networking.shared.getAllCatIDs(), id: \.self) { catID in
                    ItemDisplay(catID: catID)
                }
            }
        }
    }
}

struct ContentView_LazyHStack: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(Networking.shared.getAllCatIDs(), id: \.self) { catID in
                    ItemDisplay(catID: catID)
                }
            }
        }
    }
}

struct ContentView_List: View {
    var body: some View {
        List(Networking.shared.getAllCatIDs(), id: \.self) { catID in
            ItemDisplay(catID: catID)
        }
    }
}

struct ContentView_Form: View {
    var body: some View {
        Form {
            ForEach(Networking.shared.getAllCatIDs(), id: \.self) { catID in
                ItemDisplay(catID: catID)
            }
        }
    }
}
