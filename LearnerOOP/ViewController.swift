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
    var facilitatorInstance: facilitatorModel?
    //you just create copy of your learnerModel
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        learnerInstance = LearnerModel(nameLearner: "benj", ageLearner: 19, genderLearner: "male", imageProfileLearner: "")
        facilitatorInstance = facilitatorModel (facilName: "benjo", facilAge: 22, facilGender: "male", facilImageProfile: "", facilPerk: "unlimited internet")
        updateUI()
    }
    func updateUI() {
        if let instance = facilitatorInstance {
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "\(instance.age)"
            learnerGenderLabel.text = instance.gender
        }
        
    }

    @IBAction func increaseAgeButtonClicker(_ sender: UIButton) {
        if let instance = facilitatorInstance {
            instance.increaseAge()
            updateUI()
        }
        
    }
    @IBAction func decreaseAgeButtonClicker(_ sender: UIButton) {
        if let instance = learnerInstance {
            instance.decreaseAge()
            updateUI()
        }
    }
}

