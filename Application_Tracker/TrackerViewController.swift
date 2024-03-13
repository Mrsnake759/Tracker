//
//  TrackerViewController.swift
//  Application_Tracker
//
//  Created by artem on 12.03.2024.
//

import UIKit

class TrackerViewController: UIViewController {
    
    private lazy var emptyLabel: UILabel = {
        let label = UILabel()
        label.text = "Что будем отслеживать?"
        label.font = .systemFont(ofSize: 12, weight: .medium)
        label.textColor = .ypBlack
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var emptyImage: UIImageView = {
        let image = UIImage(named: "ImageStar")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .ypWhite
        setupEmptyErrorViews()
        settingNavBarItems()

    }
    
    private func setupEmptyErrorViews() {
        view.addSubview(emptyLabel)
        view.addSubview(emptyImage)
        NSLayoutConstraint.activate([
            emptyImage.heightAnchor.constraint(equalToConstant: 80),
            emptyImage.widthAnchor.constraint(equalToConstant: 80),
            emptyImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            emptyImage.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            emptyLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            emptyLabel.topAnchor.constraint(equalTo: emptyImage.bottomAnchor, constant: 8),
        ])
    }
    
    private func settingNavBarItems() {
        let plusButton = UIBarButtonItem(image: UIImage(named: "IconPlus"), style: .plain, target: self, action: #selector(addTracker))
        plusButton.tintColor = .ypBlack
        
        navigationItem.leftBarButtonItem = plusButton
    }
    
    @objc private func didTapLogoutButton() {
    }
    
    @objc private func addTracker() {
    }
}
