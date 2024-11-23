//
//  PerguntaViewController.swift
//  VidaPlenaQuiz
//
//  Created by user270464 on 11/23/24.
//

import UIKit

class PerguntaViewController: UIViewController {
    
    var perguntaAtual = 0
    var pontos = 0

    @IBAction func cliqueResposta(_ sender: UIButton) {
        if sender.tag == 0{pontos -= 1}
        else if sender.tag == 2 {pontos += 1}
        
        if perguntaAtual < perguntas.count - 1 {
            perguntaAtual += 1
            configurarPerguntas()
        }else {
            navegaParaTelaDesempenho()
        }
        
    }
    
    
    @IBOutlet var botoesResposta: [UIButton]!
    
    @IBOutlet weak var textoPergunta: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarPerguntas()
    }
    
    
    func configurarLayout(){
        textoPergunta.numberOfLines=0
        for botao in botoesResposta{
            botao.tintColor = .black
        }
    }
    
    func configurarPerguntas(){
        textoPergunta.text = perguntas[perguntaAtual].titulo
        for botao in botoesResposta{
            let tituloBotao = perguntas[perguntaAtual].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? ResultadoViewController
        else { return }
        desempenhoVC.pontuacao = pontos
    }
    
    func navegaParaTelaDesempenho() {
        performSegue(withIdentifier: "irParaTelaResultado", sender: nil)
    }

}
