//
//  MovieDetailsBuilder.swift
//  MovieSaver
//
//  Created by Евгений Митюля on 1/19/24.
//

import Foundation

enum MovieDetailsBuilder {
    static func setupModule() -> MovieDetailsViewController {
        let viewController = MovieListViewController()
        viewController.output = MovieListPresenter(input: viewController)
        return viewController
    }
}
