//
//  ViewController.swift
//  TasksBook
//
//  Created by Юрий Куринной on 30.09.2022.
//

import UIKit

class ViewController: UIViewController {

    var taskCodes = tasks
    
    @IBOutlet weak var taskTextLabel: UILabel!
    @IBOutlet weak var promtTextLabel: UILabel!
    
    @IBOutlet weak var getPromtButton: UIButton!
    @IBOutlet weak var getTaskButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func getTask(_ sender: Any) {
        let task = taskCodes.randomElement()
        taskTextLabel.text = task?.key
        promtTextLabel.text = task?.value
        promtTextLabel.isHidden = true
    }
    @IBAction func getPromt(_ sender: UIButton) {
        promtTextLabel.isHidden = false
    }
    
}

