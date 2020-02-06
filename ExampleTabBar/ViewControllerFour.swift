//
//  ViewControllerFour.swift
//  ExampleTabBar
//
//  Created by Kosim Mukaramov on 2/4/20.
//  Copyright © 2020 Kosim Mukaramov. All rights reserved.
//

import UIKit
import XLPagerTabStrip
class ViewControllerFour: UIViewController, IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Item Two")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
