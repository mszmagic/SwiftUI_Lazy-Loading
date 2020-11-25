//
//  ItemDisplay.swift
//  LazyStackDemo
//
//  Created by Shunzhe Ma on R 2/11/25.
//

import SwiftUI

struct ItemDisplay: View {
    
    private var catID: String
    
    @State private var title: String
    @State private var subtitle: String
    
    init(catID: String) {
        self.catID = catID
        self._title = .init(initialValue: "")
        self._subtitle = .init(initialValue: "")
    }
    
    var body: some View {
        
        VStack {
            Text(title)
                .font(.title)
            Text(subtitle)
                .font(.headline)
        }
        .onAppear(perform: {
            Networking.shared.getCatDetails(catID: catID) { (name, description) in
                self.title = name
                self.subtitle = description
            }
        })
        
    }
    
}
