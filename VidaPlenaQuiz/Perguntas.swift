//
//  Perguntas.swift
//  VidaPlenaQuiz
//
//  Created by user270464 on 11/23/24.
//

import Foundation

struct Pergunta{
    var titulo: String
    var respostas: [String]
}

let perguntas: [Pergunta] = [
    Pergunta(titulo: "Quantas horas você passou com sua família e amigos na última semana?", respostas: ["Menos de 6","De 6 a 8","Mais de 8"]),
    Pergunta(titulo: "Quantas vezes você pratica esportes por semana?", respostas: ["1x ou menos", "2 a 3x", "Mais de 3x"]),
    Pergunta(titulo: "Quantas livros você leu no último mês?", respostas: ["1 ou menos", "2 a 5", "Mais de 5"])
]
