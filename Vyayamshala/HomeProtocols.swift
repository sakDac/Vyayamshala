//
//  HomeProtocols.swift
//  Vyayamshala
//
//  Created saket bhushan on 16/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation

//MARK: Wireframe -
protocol HomeWireframeProtocol: class {
    func routeToPeopleAndStories()
    func routeToGym()
    func routeToGymAlternatives()
    func routeToFood()
    func routeToHomeRemedies()
}
//MARK: Presenter -
protocol HomePresenterProtocol: class {
    func peopleAndStories()
    func gym()
    func gymAlternatives()
    func food()
    func homeRemedies()
}

//MARK: Interactor -
protocol HomeInteractorProtocol: class {

  var presenter: HomePresenterProtocol?  { get set }
}

//MARK: View -
protocol HomeViewProtocol: class {

  var presenter: HomePresenterProtocol?  { get set }
}
