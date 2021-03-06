//
//  FlexibleSampleViewController.swift
//  Demo
//
//  Created by Jongho Lee on 2021/05/19.
//  Copyright © 2021 JH. All rights reserved.
//

import UIKit
import JHBottomSheet

class FlexibleSampleViewController: UIViewController, BottomSheetFlexible {
	@IBOutlet weak var bottomSheetContentView: UIView!		// 바텀시트(BottomSheet)의 높이를 유동적으로 관리하고 싶을때 생성하여 outlet 연결 필요
	@IBAction func closeBottomSheet(_ sender: Any) {
		dismiss(animated: true, completion: nil)
	}
}
