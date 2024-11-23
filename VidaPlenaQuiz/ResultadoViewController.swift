//
//  ResultadoViewController.swift
//  VidaPlenaQuiz
//
//  Created by user270464 on 11/23/24.
//

import UIKit

class ResultadoViewController: UIViewController {
    var pontuacao: Int?
    

    @IBOutlet weak var pontuacaoOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarDesempenho()
    }
    
    func configurarDesempenho() {
        guard let pontuacao = pontuacao
        else { return }
        pontuacaoOutlet.numberOfLines=0
        pontuacaoOutlet.text = "Pontos: \(pontuacao)"
    }
}
