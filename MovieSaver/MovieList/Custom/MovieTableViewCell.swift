//
//  MovieTableViewCell.swift
//  MovieSaver
//
//  Created by Евгений Митюля on 1/19/24.
//

import UIKit

final class MovieTableViewCell: UITableViewCell {

    private let overlayView = UIView()
    private let movieImageView = UIImageView()
    private let movieNameLabel = UILabel()
    private let movieRatingLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        backgroundColor = .movieCellColor
        
        movieImageView.image = UIImage(named: "spiderMan")
        movieImageView.contentMode = .scaleAspectFill
        
        movieNameLabel.text = "Spider-Man: No Way Home"
        movieNameLabel.numberOfLines = 0
        movieNameLabel.textAlignment = .center
        
        movieRatingLabel.text = "8.9/10"
        movieRatingLabel.numberOfLines = 0
        movieRatingLabel.textAlignment = .center
    }
    
    private func setupViews() {
        contentView.addSubview(
            overlayView
        )
        
        overlayView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            overlayView.topAnchor.constraint(equalTo: contentView.topAnchor),
            overlayView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            overlayView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            overlayView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        overlayView.addSubview(
            movieImageView,
            movieNameLabel,
            movieRatingLabel
        )
        
        movieImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            movieImageView.topAnchor.constraint(equalTo: overlayView.topAnchor),
            movieImageView.leadingAnchor.constraint(equalTo: overlayView.leadingAnchor),
            movieImageView.bottomAnchor.constraint(equalTo: overlayView.bottomAnchor),
            movieImageView.widthAnchor.constraint(equalToConstant: 197)
        ])
        
        movieNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            movieNameLabel.topAnchor.constraint(equalTo: overlayView.topAnchor, constant: 34),
            movieNameLabel.trailingAnchor.constraint(equalTo: overlayView.trailingAnchor, constant: -15),
            movieNameLabel.leadingAnchor.constraint(equalTo: movieImageView.trailingAnchor, constant: 15),
//            movieNameLabel.bottomAnchor.constraint(equalTo: overlayView.bottomAnchor),
            
        ])
        
        movieRatingLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            movieRatingLabel.trailingAnchor.constraint(equalTo: overlayView.trailingAnchor, constant: -29),
            movieRatingLabel.leadingAnchor.constraint(equalTo: movieImageView.trailingAnchor, constant: 30),
            movieRatingLabel.bottomAnchor.constraint(equalTo: overlayView.bottomAnchor, constant: -50),
            
        ])
    }
}
