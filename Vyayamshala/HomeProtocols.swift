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
    func routeToGymAlternatives(option: GymAlt)
    func routeToFoodNFitnerss(option: FoodNFitness)
}
//MARK: Presenter -
protocol HomePresenterProtocol: class {
    func peopleAndStories()
    func gymAlternatives(option: GymAlt)
    func foodNFitness(option: FoodNFitness)
}

//MARK: Interactor -
protocol HomeInteractorProtocol: class {

  var presenter: HomePresenterProtocol?  { get set }
}

//MARK: View -
protocol HomeViewProtocol: class {

  var presenter: HomePresenterProtocol?  { get set }
}
