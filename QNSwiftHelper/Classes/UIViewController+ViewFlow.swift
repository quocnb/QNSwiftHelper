//
//  UIViewController+ViewFlow.swift
//  Pods-QNSwiftHelper_Tests
//
//  Created by Quoc Nguyen on 2018/11/14.
//

import UIKit

public extension UIViewController {
    static var identifier: String {
        return String(describing: self)
    }

    static func controller<T: UIViewController>(type: T.Type, at storyboardName: String = "Main") -> T {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let identifier = T.identifier
        return storyboard.instantiateViewController(withIdentifier: identifier) as? T ?? T()
    }

    func push<T: UIViewController>(_ type: T.Type, from storyboardName: String = "Main", configure: ((T) -> Void)?) {
        let vc = UIViewController.controller(type: type, at: storyboardName)
        configure?(vc)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    func present<T: UIViewController>(_ type: T.Type, _ hasNavigation: Bool, configure: ((T) -> Void)?) {
        let vc = UIViewController.controller(type: type)
        let presentVC: UIViewController!
        if hasNavigation {
            let nav = UINavigationController(rootViewController: vc)
            presentVC = nav
        } else {
            presentVC = vc
        }
        configure?(vc)
        self.present(presentVC, animated: true, completion: nil)
    }

    func pushProgrammatically<T: UIViewController>(_ type: T.Type, configure: ((T) -> Void)?) {
        let vc = T()
        configure?(vc)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    func presentProgrammatically<T: UIViewController>(_ type: T.Type, _ hasNavigation: Bool, configure: ((T) -> Void)?) {
        let vc = T()
        let presentVC: UIViewController!
        if hasNavigation {
            let nav = UINavigationController(rootViewController: vc)
            presentVC = nav
        } else {
            presentVC = vc
        }
        configure?(vc)
        self.present(presentVC, animated: true, completion: nil)
    }
}

