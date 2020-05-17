//
//  SplashScreenFactory.swift
//  MarveliOS
//
//  Created by Carlos Gutierrez Casado on 10/05/2020.
//  Copyright © 2020 Carlos Gutierrez Casado. All rights reserved.
//

import Foundation
import UIKit

struct SplashScreenFactory {
    static func makeSplashScreen(delegate: SplashScreenPresenterDelegate?) -> SplashScreenViewController {
        let viewController = SplashScreenViewController()
        let presenter = SplashScreenPresenter(splashScreenProtocol: viewController, delegate: delegate)
        viewController.presenter = presenter
        return viewController
    }
    
    static func makeCharacteresList(delegate: CharactersListPresenterDelegate?, characters: [Character]?) -> CharactersListViewController {
        let viewController = CharactersListViewController()
        let presenter = CharactersListPresenter(charactersListProtocol: viewController, delegate: delegate)
        viewController.presenter = presenter
        if let arrCharacters = characters {
            viewController.arrCharacters = arrCharacters
        }
        return viewController
    }
}
