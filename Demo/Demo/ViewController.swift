//
//  ViewController.swift
//  Demo
//
//  Created by Jongho Lee on 2021/03/04.
//  Copyright © 2021 JH. All rights reserved.
//

import UIKit
import JHBottomSheet

class ViewController: UIViewController {
	@IBAction func showFixedBottomSheet(_ sender: Any) {
		let vc = UIViewController()
		vc.view.backgroundColor = .orange
		let bottomSheet = BottomSheet.init(childViewController: vc, height: 300)
		present(bottomSheet, animated: true, completion: nil)
	}

	@IBAction func showFlexibleBottomSheet(_ sender: Any) {
		let storyBoard: UIStoryboard! = UIStoryboard(name: "Main", bundle: nil)
		let vc = storyBoard.instantiateViewController(withIdentifier: "FlexibleSheet") as! FlexibleSampleViewController
		let bottomSheet = BottomSheet.init(childViewController: vc, addBottomSafeAreaInset: false)
		bottomSheet.delegate = self
		present(bottomSheet, animated: true, completion: nil)
	}

	@IBAction func showChangeableBottomSheet(_ sender: Any) {
		let storyBoard: UIStoryboard! = UIStoryboard(name: "Main", bundle: nil)
		let vc = storyBoard.instantiateViewController(withIdentifier: "TableViewSheet") as! TableViewSampleViewController
		let bottomSheet = BottomSheet.init(childViewController: vc, initialHeight: 300, maxHeight: 600)
		present(bottomSheet, animated: true, completion: nil)
	}

	@IBAction func showTableViewBottomSheet(_ sender: Any) {
	}


	override func viewDidLoad() {
		super.viewDidLoad()
	}
}

extension ViewController: BottomSheetDelegate {
	func bottomSheetDidDismiss(_ bottomSheet: BottomSheet) {
		print("Flexible BottomSheet Dismiss")
//		let vc = UIViewController()
//		vc.view.backgroundColor = .blue
//		self.present(vc, animated: true, completion: nil)
	}
}
