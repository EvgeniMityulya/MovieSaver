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
    let titleName = "My Movie List"
    
    private let movieTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupUI()
        setupViews()
    }
    
    private func setupTableView() {
        movieTableView.dataSource = self
        movieTableView.delegate = self
        movieTableView.register(MovieTableViewCell.self, forCellReuseIdentifier: "movieCell")
        movieTableView.separatorStyle = .none
        movieTableView.backgroundColor = .clear
        movieTableView.showsVerticalScrollIndicator = false
    }
    
    private func setupUI() {
        title = titleName
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(systemItem: .add, primaryAction: UIAction(handler: { [weak self] _ in
            let viewControler = UIViewController()
            self?.navigationController?.pushViewController(viewControler, animated: true)
        }))
        view.backgroundColor = .backgroundMainScreen
        
        
    }
    
    private func setupViews() {
        view.addSubview(movieTableView)
        movieTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            movieTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            movieTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            movieTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            movieTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    
}

extension MovieListViewController: MovieListInput {
    
}

extension MovieListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MovieTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellHeight = 212 + MovieTableViewCell.padding
        return cellHeight
    }
    
}
