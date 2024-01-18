//
//  MovieListPresenter.swift
//  MovieSaver
//
//  Created by Евгений Митюля on 1/19/24.
//

import Foundation

protocol MovieListOutput {
    
}

final class MovieListPresenter: MovieListOutput {
    
    private unowned let input: MovieListInput
    
    init(input: MovieListInput) {
        self.input = input
    }
}
