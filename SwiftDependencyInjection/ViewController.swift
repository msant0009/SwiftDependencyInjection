//
//  ViewController.swift
//  SwiftDependencyInjection
//
//  Created by Mark Santoro on 9/9/24.
//

import UIKit
import Swinject

// Swinject
let container : Container = {
    let container = Container()
    container.register(BackgroundProvidingClass.self) { resolver in
        return BackgroundProvidingClass()
        
    }
    
    container.register(AnotherVC.self) { resolver in
        let vc = AnotherVC(providerProtocol: resolver.resolve(BackgroundProvidingClass.self))
        return vc
        
    }
    
    return container
}()



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBlue
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
        button.setTitle("Open another VC", for: .normal)
        button.center = view.center
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        view.addSubview(button)
    }

    
    @objc private func buttonClicked() {
        if let viewController = container.resolve(AnotherVC.self) {
            present(viewController, animated: true)
        }
    }

}

