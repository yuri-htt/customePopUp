//
//  popupViewController.swift
//  cutomePopup
//
//  Created by 田山　由理 on 2016/12/02.
//  Copyright © 2016年 Yuri Tayama. All rights reserved.
//

import UIKit

class popupViewController: UIViewController {

    @IBOutlet weak var backGroundView: UIView!
    @IBOutlet weak var popupView: UIView!
    @IBOutlet weak var dogImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //
        setUpLayout()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Functions
    func setUpLayout() {
        backGroundView.alpha = 0.5
        popupView.alpha = 1
        popupView.center = self.view.center
        dogImageView.alpha = 1
    }
    
    // MARK: - ButtonActions
    @IBAction func didPressDelete(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func didPressCancel(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    

}
