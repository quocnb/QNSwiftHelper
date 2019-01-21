//
//  UIViewController+ViewFlow.swift
//  Pods-QNSwiftHelper_Tests
//
//  Created by Quoc Nguyen on 2018/11/14.
//

import UIKit

public extension UIViewController {
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

