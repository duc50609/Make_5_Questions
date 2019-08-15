//
//  QuestionViewController.swift
//  question
//
//  Created by ShopBack on 2019/7/28.
//  Copyright © 2019 Boring. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var titleView: UIView!
    @IBOutlet weak var bodyView: UIView!
    @IBOutlet weak var QuestionTitle: UILabel!
    @IBOutlet weak var QuestionUITextView: UITextView!
    @IBOutlet var answerButton: [UIButton]!
    @IBOutlet weak var qaUIProgressView: UIProgressView!
    @IBOutlet weak var qaNumberUILabel: UILabel!
    
    var qaInfo: [QAInfo]?
    var q_count = 0
    var correct_id = 0
    var how_right = 0
    var qa_progress: Float = 0
    
    let setBackground_color = [UIColor(red: 215/255, green: 131/255, blue: 255/255, alpha: 1.0), UIColor(red: 122/255, green: 129/255, blue: 255/255, alpha: 1.0), UIColor(red: 255/255, green: 212/255, blue: 121/255, alpha: 1.0), UIColor(red: 255/255, green: 125/255, blue: 121/255, alpha: 1.0), UIColor(red: 115/255, green: 252/255, blue: 214/255, alpha: 1.0)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restar ()
        qaUIProgressView.transform = CGAffineTransform(scaleX: 1.0, y: 5.0)
        qaUIProgressView.setProgress(0, animated: true)
        setView(i: q_count)
        
    }
    func restar () {
        q_count = 0
        correct_id = 0
        how_right = 0
        qa_progress = 0
    }
    func setView(i:Int){
        qa_progress += 0.2
        qaUIProgressView.setProgress(qa_progress, animated: true)
        qaNumberUILabel.font=UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.black)
        qaNumberUILabel.text = (String)(i+1)
        
        titleView.backgroundColor = setBackground_color[i]
        bodyView.backgroundColor = setBackground_color[i]
        
        QuestionTitle.font = UIFont.systemFont(ofSize: 36, weight: UIFont.Weight.black)
        QuestionTitle.text = "Question  " + (String)(i+1)

        
        QuestionUITextView.text = qaInfo?[i].question
        QuestionUITextView.font = UIFont(name: QuestionUITextView.font!.fontName, size: 20)
        
        answerButton[0].backgroundColor = UIColor.white
        answerButton[0].setTitle(qaInfo?[i].answer_1, for: .normal)
        answerButton[0].titleLabel?.font =  UIFont(name:"", size: 20)
        answerButton[1].backgroundColor = UIColor.white
        answerButton[1].setTitle(qaInfo?[i].answer_2, for: .normal)
        answerButton[1].titleLabel?.font =  UIFont(name:"", size: 20)
        answerButton[2].backgroundColor = UIColor.white
        answerButton[2].setTitle(qaInfo?[i].answer_3, for: .normal)
        answerButton[2].titleLabel?.font =  UIFont(name:"", size: 20)
        
        correct_id = 0
        correct_id = ((qaInfo?[i].correct_button_id))!
        print(how_right)
    }
    
    func next_page () {
            if let controller = storyboard?.instantiateViewController(withIdentifier: "finalPage") as? FinalViewController{
                            navigationController?.pushViewController(controller, animated: true)
                    controller.how_right = how_right
                    controller.qaInfo = qaInfo
                }
        }

    @IBAction func button_1(_ sender: Any) {
        let button_id = 1
        
        if q_count < 5 {
            if button_id != correct_id{
                answerButton[0].backgroundColor = UIColor(red: 255/255, green: 126/255, blue: 121/255, alpha: 1.0)
            }
            else{
                how_right = how_right + 1
                answerButton[0].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            }
        
            q_count += 1
            if q_count != 5 {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5){
                    self.setView(i: self.q_count)
                }
            }
            else {
                 next_page ()
            }
        }
        else {
            next_page ()
        }
    }
    
    @IBAction func button_2(_ sender: Any) {
        let button_id = 2
        if q_count < 5 {
            if button_id != correct_id{
                answerButton[1].backgroundColor = UIColor(red: 255/255, green: 126/255, blue: 121/255, alpha: 1.0)
            }
            else{
                how_right = how_right + 1
                answerButton[1].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            }
            q_count += 1
            if q_count != 5 {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5){
                    self.setView(i: self.q_count)
                }
            }
            else {
                 next_page ()
            }
        }
        else {
            next_page ()
        }
    }
    
    @IBAction func button_3(_ sender: Any) {
        let button_id = 3
        if q_count < 5 {
            if button_id != correct_id{
                answerButton[2].backgroundColor = UIColor(red: 255/255, green: 126/255, blue: 121/255, alpha: 1.0)
            }
            else{
                how_right = how_right + 1
                answerButton[2].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            }
            q_count += 1
            if q_count != 5 {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5){
                    self.setView(i: self.q_count)
                }
            }
            else {
                 next_page ()
            }
        }
        else {
            next_page ()
        }
    }
    
}


struct QAInfo {
    let question: String
    let answer_1: String
    let answer_2: String
    let answer_3: String
    let correct_button_id: Int
    let correct_button: UIButton
}
