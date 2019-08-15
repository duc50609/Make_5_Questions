//
//  SecTableViewController.swift
//  question
//
//  Created by ShopBack on 2019/7/27.
//  Copyright © 2019 Boring. All rights reserved.
//

import UIKit

class SecTableViewController: UITableViewController, SSRadioButtonControllerDelegate {
    
    @IBOutlet weak var Q1UITextView: UITextView!
    @IBOutlet var Q1UITextField: [UITextField]!
    @IBOutlet weak var Q1btn1: UIButton!
    @IBOutlet weak var Q1btn2: UIButton!
    @IBOutlet weak var Q1btn3: UIButton!
    var Q1radioButtonController: SSRadioButtonsController?
    var correct_button_1: Int?
    
    @IBOutlet weak var Q2UITextView: UITextView!
    @IBOutlet var Q2UITextField: [UITextField]!
    @IBOutlet weak var Q2btn1: UIButton!
    @IBOutlet weak var Q2btn2: UIButton!
    @IBOutlet weak var Q2btn3: UIButton!
    var Q2radioButtonController: SSRadioButtonsController?
    var correct_button_2: Int?

    @IBOutlet weak var Q3UITextView: UITextView!
    @IBOutlet var Q3UITextField: [UITextField]!
    @IBOutlet weak var Q3btn1: UIButton!
    @IBOutlet weak var Q3btn2: UIButton!
    @IBOutlet weak var Q3btn3: UIButton!
    var Q3radioButtonController: SSRadioButtonsController?
    var correct_button_3: Int?
    
    @IBOutlet weak var Q4UITextView: UITextView!
    @IBOutlet var Q4UITextField: [UITextField]!
    @IBOutlet weak var Q4btn1: UIButton!
    @IBOutlet weak var Q4btn2: UIButton!
    @IBOutlet weak var Q4btn3: UIButton!
    var Q4radioButtonController: SSRadioButtonsController?
    var correct_button_4: Int?

    @IBOutlet weak var Q5UITextView: UITextView!
    @IBOutlet var Q5UITextField: [UITextField]!
    @IBOutlet weak var Q5btn1: UIButton!
    @IBOutlet weak var Q5btn2: UIButton!
    @IBOutlet weak var Q5btn3: UIButton!
    var Q5radioButtonController: SSRadioButtonsController?
    var correct_button_5: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Q1radioButtonController = SSRadioButtonsController(buttons: Q1btn1, Q1btn2, Q1btn3)
        Q1radioButtonController!.delegate = self
        Q1radioButtonController!.shouldLetDeSelect = true
        
        Q2radioButtonController = SSRadioButtonsController(buttons: Q2btn1, Q2btn2, Q2btn3)
        Q2radioButtonController!.delegate = self
        Q2radioButtonController!.shouldLetDeSelect = true
        
        Q3radioButtonController = SSRadioButtonsController(buttons: Q3btn1, Q3btn2, Q3btn3)
        Q3radioButtonController!.delegate = self
        Q3radioButtonController!.shouldLetDeSelect = true
        
        Q4radioButtonController = SSRadioButtonsController(buttons: Q4btn1, Q4btn2, Q4btn3)
        Q4radioButtonController!.delegate = self
        Q4radioButtonController!.shouldLetDeSelect = true
        
        Q5radioButtonController = SSRadioButtonsController(buttons: Q5btn1, Q5btn2, Q5btn3)
        Q5radioButtonController!.delegate = self
        Q5radioButtonController!.shouldLetDeSelect = true
        
    }
    
   func didSelectButton(selectedButton: UIButton?) {
    switch selectedButton {
        case Q1btn1:
            Q1UITextField[0].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            Q1UITextField[1].backgroundColor = UIColor.white
            Q1UITextField[2].backgroundColor = UIColor.white
            correct_button_1 = 1
        
        case Q1btn2:
            Q1UITextField[1].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            Q1UITextField[2].backgroundColor = UIColor.white
            Q1UITextField[0].backgroundColor = UIColor.white
            correct_button_1 = 2
        
        case Q1btn3:
            Q1UITextField[2].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            Q1UITextField[0].backgroundColor = UIColor.white
            Q1UITextField[1].backgroundColor = UIColor.white
            correct_button_1 = 3
        
        case Q2btn1:
            Q2UITextField[0].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            Q2UITextField[1].backgroundColor = UIColor.white
            Q2UITextField[2].backgroundColor = UIColor.white
            correct_button_2 = 1
        
        case Q2btn2:
            Q2UITextField[1].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            Q2UITextField[0].backgroundColor = UIColor.white
            Q2UITextField[2].backgroundColor = UIColor.white
            correct_button_2 = 2
        
        case Q2btn3:
            Q2UITextField[2].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            Q2UITextField[0].backgroundColor = UIColor.white
            Q2UITextField[1].backgroundColor = UIColor.white
            correct_button_2 = 3
        
        case Q3btn1:
            Q3UITextField[0].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            Q3UITextField[1].backgroundColor = UIColor.white
            Q3UITextField[2].backgroundColor = UIColor.white
            correct_button_3 = 1
        
        case Q3btn2:
            Q3UITextField[1].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            Q3UITextField[0].backgroundColor = UIColor.white
            Q3UITextField[2].backgroundColor = UIColor.white
            correct_button_3 = 2
        
        case Q3btn3:
            Q3UITextField[2].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            Q3UITextField[0].backgroundColor = UIColor.white
            Q3UITextField[1].backgroundColor = UIColor.white
            correct_button_3 = 3
        
        case Q4btn1:
            Q4UITextField[0].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            Q4UITextField[1].backgroundColor = UIColor.white
            Q4UITextField[2].backgroundColor = UIColor.white
            correct_button_4 = 1
        
        case Q4btn2:
            Q4UITextField[1].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            Q4UITextField[0].backgroundColor = UIColor.white
            Q4UITextField[2].backgroundColor = UIColor.white
            correct_button_4 = 2
        
        case Q4btn3:
            Q4UITextField[2].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            Q4UITextField[0].backgroundColor = UIColor.white
            Q4UITextField[1].backgroundColor = UIColor.white
            correct_button_4 = 3
        
        case Q5btn1:
            Q5UITextField[0].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            Q5UITextField[1].backgroundColor = UIColor.white
            Q5UITextField[2].backgroundColor = UIColor.white
            correct_button_5 = 1
        
        case Q5btn2:
            Q5UITextField[1].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            Q5UITextField[0].backgroundColor = UIColor.white
            Q5UITextField[2].backgroundColor = UIColor.white
            correct_button_5 = 2
        
        case Q5btn3:
            Q5UITextField[2].backgroundColor = UIColor(red: 115/255, green: 250/255, blue: 121/255, alpha: 1.0)
            Q5UITextField[0].backgroundColor = UIColor.white
            Q5UITextField[1].backgroundColor = UIColor.white
            correct_button_5 = 3
        
        default:
            NSLog("Error")
        }
    }
    
    @IBAction func check(_ sender: Any) {
        
        if let question_1 = Q1UITextView.text,let question_2 = Q2UITextView.text, let question_3 = Q3UITextView.text, let question_4 = Q4UITextView.text, let question_5 = Q5UITextView.text, let answer_1_array = Q1UITextField, let answer_2_array = Q2UITextField, let answer_3_array = Q3UITextField, let answer_4_array = Q4UITextField, let answer_5_array = Q5UITextField, question_1 != "", question_2 != "", question_3 != "", question_4 != "", question_5 != "", answer_1_array[0].text != "", answer_1_array[1].text != "", answer_1_array[2].text != "", answer_2_array[0].text != "", answer_2_array[1].text != "", answer_2_array[2].text != "", answer_3_array[0].text != "", answer_3_array[1].text != "", answer_3_array[2].text != "", answer_4_array[0].text != "", answer_4_array[1].text != "", answer_4_array[2].text != "", answer_5_array[0].text != "", answer_5_array[1].text != "", answer_5_array[2].text != "", correct_button_1 != nil, correct_button_2 != nil, correct_button_3 != nil, correct_button_4 != nil, correct_button_5 != nil{
           
            if let controller = storyboard?.instantiateViewController(withIdentifier: "testPage") as? QuestionViewController{
                navigationController?.pushViewController(controller, animated: true)
                controller.qaInfo = [
                    QAInfo(question: question_1, answer_1: Q1UITextField[0].text!, answer_2: Q1UITextField[1].text!, answer_3: Q1UITextField[2].text!, correct_button_id: correct_button_1!, correct_button: (Q1radioButtonController?.selectedButton())!),
                    QAInfo(question: question_2, answer_1: Q2UITextField[0].text!, answer_2: Q2UITextField[1].text!, answer_3: Q2UITextField[2].text!, correct_button_id: correct_button_2!, correct_button: (Q2radioButtonController?.selectedButton())!),
                    QAInfo(question: question_3, answer_1: Q3UITextField[0].text!, answer_2: Q3UITextField[1].text!, answer_3: Q3UITextField[2].text!, correct_button_id: correct_button_3!, correct_button: (Q3radioButtonController?.selectedButton())!),
                    QAInfo(question: question_4, answer_1: Q4UITextField[0].text!, answer_2: Q4UITextField[1].text!, answer_3: Q4UITextField[2].text!, correct_button_id: correct_button_4!, correct_button: (Q4radioButtonController?.selectedButton())!),
                    QAInfo(question: question_5, answer_1: Q5UITextField[0].text!, answer_2: Q5UITextField[1].text!, answer_3: Q5UITextField[2].text!, correct_button_id: correct_button_5!, correct_button: (Q5radioButtonController?.selectedButton())!),
                    ]
            }
        }
            
        else{
            let title = "輸入未完全"
            let alertMessage = "請檢查每個欄位是否都填寫完成及設定正確的答案"
            let alertController = UIAlertController(title: title, message: alertMessage, preferredStyle: UIAlertController.Style.alert)
            let okAction = UIAlertAction(title: "確認",style: .default,handler: nil)
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
        

}
