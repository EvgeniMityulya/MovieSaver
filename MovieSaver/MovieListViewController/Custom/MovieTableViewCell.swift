//
//  MovieTableViewCell.swift
//  MovieSaver
//
//  Created by Евгений Митюля on 1/19/24.
//

import UIKit

final class MovieTableViewCell: UITableViewCell {
    
    static let padding: CGFloat = 20
    
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
        backgroundColor = .clear
        selectionStyle = .none
        
        overlayView.layer.cornerRadius = 8
        overlayView.backgroundColor = .movieCellColor
        overlayView.layer.shadowColor = UIColor.black.cgColor
        overlayView.layer.shadowOpacity = 0.1
        overlayView.layer.shadowOffset = CGSize(width: 0, height: 0)
        overlayView.layer.shadowRadius = 16
        
        movieImageView.image = UIImage(named: "spiderMan")
        movieImageView.contentMode = .scaleToFill
        
        let manropeMedium: UIFont = .manrope(ofSize: 18, style: .medium)
        movieNameLabel.text = "Spider-Man: No Way Home"
        movieNameLabel.font = manropeMedium
        movieNameLabel.numberOfLines = 0
        movieNameLabel.textAlignment = .center
        
        movieRatingLabel.numberOfLines = 0
        movieRatingLabel.textAlignment = .center
        movieRatingLabel.attributedText = setupMovieRatingFont()
    }
    
    private func setupViews() {
        contentView.addSubview(
            overlayView
        )
        
        overlayView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            overlayView.topAnchor.constraint(equalTo: contentView.topAnchor),
            overlayView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 22),
            overlayView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -18),
            overlayView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -MovieTableViewCell.padding)
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
        ])
        
        movieRatingLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            movieRatingLabel.topAnchor.constraint(equalTo: movieNameLabel.bottomAnchor, constant: 45),
            movieRatingLabel.trailingAnchor.constraint(equalTo: overlayView.trailingAnchor, constant: -29),
            movieRatingLabel.leadingAnchor.constraint(equalTo: movieImageView.trailingAnchor, constant: 30),
            movieRatingLabel.bottomAnchor.constraint(equalTo: overlayView.bottomAnchor, constant: -50),
            
        ])
    }
    
    private func setupMovieRatingFont() -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString("8.9/10")
        let mainAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.manrope(ofSize: 18, style: .bold),
            .foregroundColor: UIColor.black
        ]
        
        let subAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.manrope(ofSize: 18, style: .regular),
            .foregroundColor: UIColor.subtitleTextColor
        ]
        
        attributedString.addAttributes(mainAttributes, range: NSRange(location: 0, length: 3))
        attributedString.addAttributes(subAttributes, range: NSRange(location: 3, length: attributedString.length - 3))
        return attributedString
    }
}
