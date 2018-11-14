//
//  UITableView+Extension.swift
//  QNSwiftHelper
//
//  Created by Quoc Nguyen on 2018/10/31.
//

import UIKit

public extension UITableView {
    func register<T: UITableViewCell>(_ cellType: T.Type, fromNib: Bool = true) {
        if fromNib {
            self.register(cellType.nib, forCellReuseIdentifier: cellType.identifier)
        } else {
            self.register(T.self, forCellReuseIdentifier: cellType.identifier)
        }
    }

    func reuseCell<T: UITableViewCell>(_ cellType: T.Type, for indexPath: IndexPath) -> T {
        let reuse = self.dequeueReusableCell(withIdentifier: cellType.identifier, for: indexPath)
        return reuse as? T ?? T()
    }
}

extension UITableViewCell {
    open override func awakeFromNib() {
        self.selectionStyle = .none
    }
}
