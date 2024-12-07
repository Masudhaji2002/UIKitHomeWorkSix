//
//  CardView.swift
//  UIKitHomeWorkSix
//
//  Created by Масуд Гаджиев on 03.12.2024.
//

import UIKit

class CardView: UITableViewCell {
    
    static let identifier: String = "CerdView"
    
    private lazy var cardUIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .gray
        $0.layer.cornerRadius = 30
        $0.addSubviews(fullNameLabel, cardImageView, titleLabel, dateLabel, descriptionLabel, nextBtn)
        return $0
    }(UIView())
    
    private lazy var fullNameLabel = textLabel(font: .boldSystemFont(ofSize: 20))
    
    private lazy var cardImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 30
        return $0
    }(UIImageView())
    
    private lazy var titleLabel = textLabel(font: .boldSystemFont(ofSize: 20))
    
    private lazy var dateLabel = textLabel(font: .systemFont(ofSize: 12))
    
    private lazy var descriptionLabel = textLabel(font: .systemFont(ofSize: 16))
    
    private lazy var nextBtn = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .systemGreen
        $0.layer.cornerRadius = 20
        $0.setTitle("next", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        return $0
    }(UIButton())
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(cardUIView)
    }
    
    func setupCell(card: CardModel) {
        fullNameLabel.text = card.fullName
        cardImageView.image = UIImage(named: card.image)
        titleLabel.text = card.title
        dateLabel.text = card.date
        descriptionLabel.text = card.description
        
        setupConstraints()
        
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate ([
            cardUIView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            cardUIView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            cardUIView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            cardUIView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            fullNameLabel.topAnchor.constraint(equalTo: cardUIView.topAnchor, constant: 23),
            fullNameLabel.leadingAnchor.constraint(equalTo: cardUIView.leadingAnchor, constant: 36),
            fullNameLabel.trailingAnchor.constraint(equalTo: cardUIView.trailingAnchor, constant: -36),
            
            
            cardImageView.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 21),
            cardImageView.leadingAnchor.constraint(equalTo: cardUIView.leadingAnchor, constant: 20),
            cardImageView.trailingAnchor.constraint(equalTo: cardUIView.trailingAnchor, constant: -20),
            cardImageView.heightAnchor.constraint(equalToConstant: 191),
            
            titleLabel.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: cardUIView.leadingAnchor, constant: 36),
            titleLabel.trailingAnchor.constraint(equalTo: cardUIView.trailingAnchor, constant: -36),
            
            dateLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            dateLabel.leadingAnchor.constraint(equalTo: cardUIView.leadingAnchor, constant: 36),
            dateLabel.trailingAnchor.constraint(equalTo: cardUIView.trailingAnchor, constant: -36),
            
            descriptionLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 15),
            descriptionLabel.leadingAnchor.constraint(equalTo: cardUIView.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: cardUIView.trailingAnchor, constant: -20),
            
            nextBtn.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 38),
            nextBtn.leadingAnchor.constraint(equalTo: cardUIView.leadingAnchor, constant: 20),
            nextBtn.trailingAnchor.constraint(equalTo: cardUIView.trailingAnchor, constant: -20),
            nextBtn.bottomAnchor.constraint(equalTo: cardUIView.bottomAnchor, constant: -20),
            nextBtn.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
    
    
    
    func textLabel(font: UIFont) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = font
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
