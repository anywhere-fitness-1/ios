//
//  AFButton.swift
//  AnywhereFitness
//
//  Created by Norlan Tibanear on 8/31/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

import UIKit

class AFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        // custom code
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }

    private func configure() {
        layer.cornerRadius = 10
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }

    func set(backgroundColor: UIColor, title: String) {
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
    }

}//
