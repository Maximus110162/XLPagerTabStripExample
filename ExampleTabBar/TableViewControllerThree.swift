//
//  TableViewControllerThree.swift
//  
//
//  Created by Kosim Mukaramov on 2/4/20.
//

import UIKit
import XLPagerTabStrip
class TableViewControllerThree: UITableViewController, IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Item Three")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellThree", for: indexPath) as! TableViewCellThree

        // Configure the cell...

        return cell
    }
    

   

}
//extension TableViewControllerThree : IndicatorInfoProvider{
//    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
//        return IndicatorInfo(title: "Item Three")
//    }
//}
