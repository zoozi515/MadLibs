//
//  SecondViewController.swift
//  MadLibs
//
//  Created by admin on 29/12/2021.
//

import UIKit

protocol SendDelegate: AnyObject{
    func sendSentence(_ text: String)
}

class SecondViewController: UIViewController {
    

    @IBOutlet weak var adjectiveLable: UITextField!
    
    @IBOutlet weak var firstVerbLabel: UITextField!
    
    @IBOutlet weak var secondVerbLabel: UITextField!
    
    @IBOutlet weak var nounLabel: UITextField!
    
    weak var delegate: SendDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitButtonPressed(_ sender: Any) {
        guard let noun = nounLabel.text else {return}
        guard let verb1 = firstVerbLabel.text else {return}
        guard let verb2 = secondVerbLabel.text else {return}
        guard let adjective = adjectiveLable.text else {return}
        let sentence = "We are having a perfectly \(adjective) right now. Later we will \(verb1) and \(verb2) in the \(noun)"
        
        delegate?.sendSentence(sentence)
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
