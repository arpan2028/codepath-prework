//
//  ViewController.swift
//  Notsogoodapp
//
//  Created by Arpan Bhattarai on 8/14/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // MARK: - Actions
        @IBAction func stepperDidChange(_ sender: UIStepper) {
            numberOfPetsLabel.text = "\(Int(sender.value))"
        }
    

    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(
            at: yearSegmentedControl.selectedSegmentIndex
        ) ?? ""

        let introduction = """
        My name is \(firstNameTextField.text ?? "") \(lastNameTextField.text ?? "") and I attend \(schoolNameTextField.text ?? "").
        I am currently in my \(year) year and I own \(numberOfPetsLabel.text ?? "0") dogs.
        It is \(morePetsSwitch.isOn) that I want more pets.
        """

        // 1. Print to console (Xcode debug area)
        print(introduction)

        // 2. Show an alert inside the app
        let alert = UIAlertController(title: "My Introduction",
                                      message: introduction,
                                      preferredStyle: .alert)

        let action = UIAlertAction(title: "Nice to meet you!", style: .default)
        alert.addAction(action)

        present(alert, animated: true)
    }


}

