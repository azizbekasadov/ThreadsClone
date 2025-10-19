//
//  Router.swift
//  ThreadsClone
//
//  Created by Azizbek Asadov on 19.10.2025.
//

import Foundation

protocol Router {
    func push(animated: Bool)
    func present(animated: Bool)
    func pop(animated: Bool)
    func popToRoot(animated: Bool)
}
