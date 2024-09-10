//
//  BackgroundProvidingClass.swift
//  SwiftDependencyInjection
//
//  Created by Mark Santoro on 9/9/24.
//

import Foundation
import UIKit


class BackgroundProvidingClass : BackgroundProviderProtocol{
    var backgroundColor: UIColor {
        let backgroundColors : [UIColor] = [.systemGray,.systemRed, .systemMint,.systemCyan]
        return backgroundColors.randomElement()!
    }
    
    
}
