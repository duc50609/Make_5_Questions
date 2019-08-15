//
//  FinalViewController.swift
//  question
//
//  Created by ShopBack on 2019/8/14.
//  Copyright © 2019 Boring. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var Got_UILabel: UILabel!
    @IBOutlet weak var answers_UILbel: UILabel!
    @IBOutlet weak var count_UILabel: UILabel!
    @IBOutlet weak var qaUIProgressView: UIProgressView!
    @IBOutlet weak var q_img_UILabel: UILabel!
    
    var how_right: Int!
    var qaInfo: [QAInfo]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.qaUIProgressView.transform = CGAffineTransform(scaleX: 1.0, y: 18.0)
        
        UIView.animate(withDuration: 2.5 , delay: 0 , usingSpringWithDamping: 0.2 , initialSpringVelocity: 8 , options: [] , animations: {
            self.q_img_UILabel.center.x -= 150
        }, completion: nil)
        
        UIView.animate(withDuration: 2 , delay: 2.5 , animations: {
            self.q_img_UILabel.alpha = 0
            self.q_img_UILabel.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5 , delay: 4.5 , animations: {
            self.qaUIProgressView.alpha = 1
        }, completion: nil)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5.0){
            self.qaUIProgressView.setProgress(((Float)(self.how_right!)/5.0), animated: true)
            self.count_UILabel.text = (String)(self.how_right)
            self.count_UILabel.alpha = 1
            self.Got_UILabel.alpha = 1
            self.answers_UILbel.alpha = 1
        }


        
    }
        
    @IBAction func try_again(_ sender: Any) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "testPage") as? QuestionViewController{
                    navigationController?.pushViewController(controller, animated: true)
                    controller.qaInfo = qaInfo
            }
    }
    
        
}



