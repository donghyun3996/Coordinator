//
//  Coodinator.swift
//  CoodinatorPattern
//
//  Created by 동현 on 2022/05/11.
//


import Foundation

protocol Coordinator : class {
    var childCoordinators : [Coordinator] { get set }
    func start()
}
