//
//  TableViewControllerTwo.swift
//  ExampleTabBar
//
//  Created by Kosim Mukaramov on 2/4/20.
//  Copyright © 2020 Kosim Mukaramov. All rights reserved.
//

import UIKit
import XLPagerTabStrip
class TableViewControllerTwo: UITableViewController, IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Item Two")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellTwo", for: indexPath)

        // Configure the cell...

        return cell
    }
}

//extension TableViewControllerTwo : IndicatorInfoProvider{
//    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
//        return IndicatorInfo(title: "Item Two")
//    }
//}
