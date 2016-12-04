//
//  ViewController.swift
//  cutomePopup
//
//  Created by 田山　由理 on 2016/12/01.
//  Copyright © 2016年 Yuri Tayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpScrollView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    /*ScrollView*/
    func setUpScrollView() {
        scrollView.contentSize = CGSize(width: self.view.frame.size.width, height: 700)
        scrollView.scrollIndicatorInsets = UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
        scrollView.delegate = self
        self.view.addSubview(scrollView)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("didScroll")
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("beginDragging")
    }
    
    /*button action*/
    @IBAction func didPressDeleteTeamButton(_ sender: AnyObject) {
        
        let storyboard: UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "confirmPopupView") as! popupViewController
        self.present(nextView, animated: true, completion: nil)
        
    }

    
}

