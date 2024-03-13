//
//  ViewController.swift
//  Application_Tracker
//
//  Created by artem on 11.03.2024.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .ypWhite
        setupTabBar()
    }

    private func setupTabBar() {
        let tabBarItem0 = createTabBar(title: "Трекеры", image: UIImage(named: "IconCircle"), vC: TrackerViewController())

        let tabBarItem1 = createTabBar(title: "Статистика", image: UIImage(named: "IconRabbit"), vC: StatisticViewController())

        let tabBarSeparator = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 1))
        tabBarSeparator.backgroundColor = .ypGray
        tabBar.addSubview(tabBarSeparator)

        setViewControllers([tabBarItem0, tabBarItem1], animated: true)
    }

    private func createTabBar(title: String, image: UIImage?, vC: UIViewController) -> UINavigationController {
        let setting = UINavigationController(rootViewController: vC)
        setting.navigationBar.prefersLargeTitles = true
        setting.tabBarItem.title = title
        setting.tabBarItem.image = image
        setting.viewControllers.first?.navigationItem.title = title
        return setting
    }
}
