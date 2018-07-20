//
//  HomePresenter.swift
//  Vyayamshala
//
//  Created saket bhushan on 16/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class HomePresenter {
    
    weak private var view: HomeViewProtocol?
    var interactor: HomeInteractorProtocol?
    private let router: HomeWireframeProtocol

    init(interface: HomeViewProtocol, interactor: HomeInteractorProtocol?, router: HomeWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}

extension HomePresenter: HomePresenterProtocol {
    
    func peopleAndStories() {
        self.router.routeToPeopleAndStories()
    }
    
    func gym() {
        self.router.routeToGym()
    }
    
    func gymAlternatives() {
        self.router.routeToGymAlternatives()
    }
    
    func food() {
        self.router.routeToFood()
    }
    
    func homeRemedies() {
        self.router.routeToHomeRemedies()
    }
    
}
