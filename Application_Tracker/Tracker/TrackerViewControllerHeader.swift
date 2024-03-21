//
//  TrackerViewControllerHeader.swift
//  Application_Tracker
//
//  Created by artem on 13.03.2024.
//

import UIKit

class TrackerViewControllerHeader: UICollectionReusableView {
    
    let titleLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 19, weight: .bold)
        title.numberOfLines = 1
        return title
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 28),
            titleLabel.heightAnchor.constraint(equalToConstant: 18),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
