//
//  ViewController.swift
//  VidaPlenaQuiz
//
//  Created by user270464 on 11/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func clickButton(_ sender: Any) {
        print("Aqui clicou")
    }
    
    @IBOutlet weak var outletButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
    }
    
    func configurarLayout(){
        outletButton.layer.cornerRadius = 20.0
    }

}

