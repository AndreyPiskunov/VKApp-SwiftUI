//
//  ExtensionsView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 25.12.2022.
//

import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
