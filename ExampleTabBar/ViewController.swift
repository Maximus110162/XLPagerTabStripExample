//
//  ViewController.swift
//  ExampleTabBar
//
//  Created by Kosim Mukaramov on 2/4/20.
//  Copyright © 2020 Kosim Mukaramov. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import SnapKit
class ViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {

        self.configureButtonBar()
        super.viewDidLoad()
        //setupConstraintsTab()
        title = "Pagers"
        
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TableOne")
        let child2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TableTwo")
//        let child3 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TableThree")
        let child4 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ControllerFour")
        return [child1,child2,child4]
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
//    private func setupConstraintsTab(){
//        self.containerView.snp.makeConstraints{(make) in
//            make.top.equalToSuperview().offset(100)
//            make.left.right.equalToSuperview()
//        }
//
//        self.containerView.snp.makeConstraints{(make) in
//            make.top.equalToSuperview().offset(70)
//            make.left.right.equalToSuperview()
//            make.height.equalTo(40)
//        }
//
//    }
    
    
    
    
    
    
    func configureButtonBar() {
         // Sets the background colour of the pager strip and the pager strip item
         buttonBarView.removeFromSuperview()
         settings.style.buttonBarBackgroundColor = .white
         settings.style.buttonBarItemBackgroundColor = .white

         // Sets the pager strip item font and font color
//         settings.style.buttonBarItemFont = UIFont(name: "Helvetica", size: 16.0)!
         settings.style.buttonBarItemTitleColor = .gray

         // Sets the pager strip item offsets
         settings.style.buttonBarMinimumLineSpacing = 0
         settings.style.buttonBarItemsShouldFillAvailableWidth = true
         settings.style.buttonBarLeftContentInset = 0
         settings.style.buttonBarRightContentInset = 0

         // Sets the height and colour of the slider bar of the selected pager tab
         settings.style.selectedBarHeight = 3.0
         settings.style.selectedBarBackgroundColor = .orange

         // Changing item text color on swipe
         changeCurrentIndexProgressive = {(oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
                 guard changeCurrentIndex == true else { return }
               
                 oldCell?.label.textColor = .gray
                 newCell?.label.textColor = .orange
         }
        
        
        
    }
    func  loadDesign()  {
        self.settings.style.selectedBarHeight = 1
        self.settings.style.selectedBarBackgroundColor = .red
        self.settings.style.buttonBarBackgroundColor = .blue
        self.settings.style.selectedBarBackgroundColor = .white
        self.settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 13)
        self.settings.style.selectedBarHeight = 4
        self.settings.style.buttonBarMinimumLineSpacing = 0
        self.settings.style.buttonBarItemTitleColor = .white
        self.settings.style.buttonBarItemsShouldFillAvailableWidth = true
        self.settings.style.buttonBarLeftContentInset = 0
        self.settings.style.buttonBarRightContentInset = 0
//        buttonBarView.removeFromSuperview()
//        navigationController?.navigationBar.addSubview(buttonBarView)
//        containerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
//        containerView.bounces = false
//
//        changeCurrentIndexProgressive = {(oldCell: ButtonBarViewCell?,newCell: ButtonBarViewCell?, progressPercentage:  CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
//            guard changeCurrentIndex == true else {
//                return
//            }
//            oldCell?.label.textColor = UIColor.white
//            newCell?.label.textColor = UIColor.white
//
//
//        }
    }


}

