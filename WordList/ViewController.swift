//
//  ViewController.swift
//  WordList
//
//  Created by Atsuhiro Muroyama on 2022/05/06.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func back(sender: UIStoryboardSegue){
        
    }
    @IBAction func startButtonTapped(){
        let saveData = UserDefaults.standard
        if saveData.array(forKey: "WORD") != nil {
            if saveData.array(forKey: "WORD")!.count > 0{
                performSegue(withIdentifier: "toQuestionView", sender: nil)
            }
        }else{
            let alert = UIAlertController(
                title: "単語",
                message: "まずは単語一覧をタップして単語を登録してください",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(
                title: "OK",
                style: .default,
                handler: nil
            ))
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

