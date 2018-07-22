//
//  FitnessAndDietProtocols.swift
//  Vyayamshala
//
//  Created saket bhushan on 21/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation

/*
 var imageName = String()
 var imageTitle = String()
 var description = String()
 */

protocol FoodNFitnessModel: class {
    var imageUrl: String {get set}
    var imageTitle: String {get set}
    var description: String {get set}
}

//MARK: Wireframe -
protocol FitnessAndDietWireframeProtocol: class {

}
//MARK: Presenter -
protocol FitnessAndDietPresenterProtocol: class {

}

//MARK: View -
protocol FitnessAndDietViewProtocol: class {

  var presenter: FitnessAndDietPresenterProtocol?  { get set }
}
