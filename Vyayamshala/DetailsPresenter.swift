//
//  DetailsPresenter.swift
//  Vyayamshala
//
//  Created saket bhushan on 23/07/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class DetailsPresenter: DetailsPresenterProtocol {

    weak private var view: DetailsViewProtocol?
    private let router: DetailsWireframeProtocol

    init(interface: DetailsViewProtocol, router: DetailsWireframeProtocol) {
        self.view = interface
        self.router = router
    }

}
