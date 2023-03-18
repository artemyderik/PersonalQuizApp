//
//  Question.swift
//  PersonalQuiz
//
//  Created by Артемий Дериглазов on 18.03.2023.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями, вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь"
        case .cat:
            return "Вы себе на уме, любите гулять сами по себе, вы цените одиночество"
        case .rabbit:
            return "Вам нравится все мягкое, вы здоровы и полны энергии"
        case .turtle:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях"
        }
    }
}
