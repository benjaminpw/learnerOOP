//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Benjamin Purbowasito on 15/05/19.
//  Copyright © 2019 iosda Ben. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var learnerNameLabel: UILabel!
    
    @IBOutlet weak var learnerAgeLabel: UILabel!
    
    @IBOutlet weak var learnerGenderLabel: UILabel!
    
    var learnerInstance: LearnerModel?
    //you just create copy of your learnerModel
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        learnerInstance = LearnerModel(nameLearner: "benj", ageLearner: 19, genderLearner: "male", imageProfileLearner: "")
        updateUI()
    }
    func updateUI() {
        learnerNameLabel.text = learnerInstance?.name
        learnerAgeLabel.text = "\(learnerInstance?.age)"
        learnerGenderLabel.text = learnerInstance?.gender
    }

}

