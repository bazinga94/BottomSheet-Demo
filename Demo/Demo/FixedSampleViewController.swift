//
//  FixedSampleViewController.swift
//  Demo
//
//  Created by Jongho Lee on 2021/09/11.
//  Copyright © 2021 JH. All rights reserved.
//

import UIKit

class FixedSampleViewController: UIViewController {
	@IBOutlet weak var barView: UIView!

	override func viewDidLoad() {
		super.viewDidLoad()
		self.view.roundCorners(cornerRadius: 40, byRoundingCorners: [.topLeft, .topRight])
		self.barView.roundCorners(cornerRadius: 2, byRoundingCorners: .allCorners)
		self.view.layoutIfNeeded()
	}
}

extension UIView {
	func roundCorners(cornerRadius: CGFloat, byRoundingCorners: UIRectCorner) {
		if #available(iOS 11.0, *) {
			clipsToBounds = true
			layer.cornerRadius = cornerRadius
			layer.maskedCorners = CACornerMask(rawValue: byRoundingCorners.rawValue)
		} else {
			let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: byRoundingCorners, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
			let maskLayer = CAShapeLayer()
			maskLayer.frame = self.bounds
			maskLayer.path = path.cgPath

			layer.mask = maskLayer
		}
	}
}
