//
//  Networking.swift
//  LazyStackDemo
//
//  Created by Shunzhe Ma on R 2/11/25.
//

import Foundation
import UIKit

class Networking {
    
    static let shared = Networking()
    
    func getAllCatIDs() -> [String] {
        var result = [String]()
        for i in 0..<100 {
            result.append(String(i))
        }
        return result
    }
    
    func getCatDetails(catID: String, completionHandler: @escaping (String, String) -> Void) {
        print("id: \(catID)")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            completionHandler("名前", "ID \(catID)")
        }
    }
    
}
