//
//  ViewController.swift
//  CustomTabbarUse
//
//  Created by Yılmaz Yağız Dokumacı on 23.01.2023.
//

import UIKit
import LZViewPager

class PagingViewController: UIViewController, LZViewPagerDelegate, LZViewPagerDataSource {
    
    @IBOutlet weak var viewPager: LZViewPager!
    
    
    // MARK : - Variables
    private var subControllers:[UIViewController] = []
    
    
    
    override func viewDidLoad() {
        viewPagerProperties()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func viewPagerProperties() {
        viewPager.delegate = self
        viewPager.dataSource = self
        viewPager.hostController = self
        
        let home = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        let originals = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OriginalsViewController") as! OriginalsViewController
        let deneme = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OriginalsViewController") as! OriginalsViewController
        let deneme2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OriginalsViewController") as! OriginalsViewController
        let deneme3 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OriginalsViewController") as! OriginalsViewController
        let deneme4 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OriginalsViewController") as! OriginalsViewController
        
        home.title = "Home"
        originals.title = "Originals"
        deneme.title = "Deneme"
        deneme2.title = "Deneme 2"
        deneme3.title = "Deneme 3"
        deneme4.title = "Deneme 4"
        subControllers = [home,originals,deneme,deneme2,deneme3,deneme4]
        
        viewPager.reload()
    }
    
    func numberOfItems() -> Int {
        return subControllers.count
    }
    
    func controller(at index: Int) -> UIViewController {
        return subControllers[index]
    }
    
    func button(at index: Int) -> UIButton {
        let button = UIButton()
                button.setTitleColor(UIColor.black, for: .normal)
                button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
                return button
    }
    
    func shouldEnableSwipeable() -> Bool {
        return false
    }


}

