//
//  ViewController.swift
//  MadLibs
//
//  Created by admin on 28/12/2021.
//

import UIKit

class ViewController: UIViewController{

    //var delegate: SenddDelegate
    
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addVocbsButton(_ sender: UIBarButtonItem) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        secondVC.delegate = self
        self.present(secondVC, animated: true, completion: nil)
    }
    
    @IBAction func toMainView(_ segue: UIStoryboardSegue){
        
    }
}

extension ViewController: SendDelegate{
    func sendSentence(_ text: String){
        textLabel.text = text
    }
}
