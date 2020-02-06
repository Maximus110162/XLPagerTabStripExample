//
//  TableViewControllerOne.swift
//  ExampleTabBar
//
//  Created by Kosim Mukaramov on 2/4/20.
//  Copyright © 2020 Kosim Mukaramov. All rights reserved.
//

import UIKit
import XLPagerTabStrip
class TableViewControllerOne: UITableViewController, IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Item One")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellOne", for: indexPath) as! TableViewCellOne
        return cell
    }
 
}
