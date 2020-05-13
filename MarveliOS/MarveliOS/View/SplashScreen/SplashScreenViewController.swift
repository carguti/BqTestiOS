//
//  SplashScreenViewController.swift
//  MarveliOS
//
//  Created by Carlos Gutierrez Casado on 10/05/2020.
//  Copyright © 2020 Carlos Gutierrez Casado. All rights reserved.
//

import UIKit

protocol SplashScreenProtocol: class {
    func progressUpdated(progress: Double)
}

class SplashScreenViewController: UIViewController {
    var presenter: SplashScreenPresenter?
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        configureViews()
        presenter?.splashScreenShown()
    }
}

extension SplashScreenViewController {
    func configureViews() {
        self.view.backgroundColor?.withAlphaComponent(0.5)
    }
}

extension SplashScreenViewController: SplashScreenProtocol {
    func progressUpdated(progress: Double) {
        self.progressBar.progress = Float(progress)
    }
}
