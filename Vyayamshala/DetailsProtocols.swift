//
//  DetailsProtocols.swift
//  Vyayamshala
//
//  Created saket bhushan on 23/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation

//MARK: Wireframe -
protocol DetailsWireframeProtocol: class {

}
//MARK: Presenter -
protocol DetailsPresenterProtocol: class {

}

//MARK: View -
protocol DetailsViewProtocol: class {

  var presenter: DetailsPresenterProtocol?  { get set }
}