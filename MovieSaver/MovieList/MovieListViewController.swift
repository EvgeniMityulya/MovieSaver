//
//  MovieListViewController.swift
//  MovieSaver
//
//  Created by Евгений Митюля on 1/19/24.
//

import UIKit

protocol MovieListInput: AnyObject {
    
}

final class MovieListViewController: UIViewController {
    
    var output: MovieListOutput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

extension MovieListViewController: MovieListInput {
    
}
