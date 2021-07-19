//
//  BaseListTableViewCell.swift
//  Stores
//
//  Created by Matúš Dalloš on 05.07.2021.
//

import SwiftUI

protocol LastCellHelper {
    func setupLastCell()
}

class BaseListTableViewCell: UITableViewCell {
    lazy var separator: UIView = {
        let separatorView = UIView()
        separatorView.backgroundColor = UIColor.gray

        return separatorView
    }()

    // Override in subclasses to change separator leading inset
    var leadingInset: CGFloat {
        return 16.0
    }
    var trailingInset: CGFloat {
        return 0.0
    }

    private var separatorLeadingConstraint = NSLayoutConstraint()
    private var separatorTrailingConstraint = NSLayoutConstraint()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }

    func commonInit() {
        addSubview(separator)
        separator.translatesAutoresizingMaskIntoConstraints = false
        separatorLeadingConstraint = separator.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: leadingInset)
        separatorTrailingConstraint = separator.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -trailingInset)
        NSLayoutConstraint.activate([
            separator.heightAnchor.constraint(equalToConstant: 1.0),
            separatorLeadingConstraint,
            separatorTrailingConstraint,
            separator.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            ])
    }

    override func prepareForReuse() {
        super.prepareForReuse()

        separatorLeadingConstraint.constant = leadingInset
        separatorTrailingConstraint.constant = -trailingInset
    }
}

extension BaseListTableViewCell: LastCellHelper {
    func setupLastCell() {
        separatorLeadingConstraint.constant = 0
        separatorTrailingConstraint.constant = 0
    }
}
