//
//  MenuViewController.swift
//  question
//
//  Created by ShopBack on 2019/7/28.
//  Copyright © 2019 Boring. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var img_1_UILabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
                    UIView.animate(withDuration: 1) {
                        self.img_1_UILabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
                            .inverted().concatenating(self.img_1_UILabel.transform)
                    }
                }
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
