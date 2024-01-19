//
//  MovieListBuilder.swift
//  MovieSaver
//
//  Created by Евгений Митюля on 1/19/24.
//

import Foundation

enum MovieListBuilder {
    static func setupModule() -> MovieListViewController {
        let viewController = MovieListViewController()
        viewController.output = MovieListPresenter(input: viewController)
        return viewController
    }
}
