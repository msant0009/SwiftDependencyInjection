//
//  AnotherVC.swift
//  SwiftDependencyInjection
//
//  Created by Mark Santoro on 9/9/24.
//

import UIKit

class AnotherVC: UIViewController {

    private let providerProtocol : BackgroundProviderProtocol?
    
    init(providerProtocol : BackgroundProviderProtocol?){
        self.providerProtocol = providerProtocol
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(Coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = providerProtocol?.backgroundColor ?? .white

    }
    

    

}
