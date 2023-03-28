//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Артемий Дериглазов on 25.03.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
//MARK: IB Outlets
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var resultTextLabel: UILabel!
    
    //MARK: Public Properties
    var chosenAnswers: [Answer]!
    
//MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        getResult()
        navigationItem.hidesBackButton = true
    }
    
//MARK: IB Actions
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
}

//MARK: Private Methods
extension ResultViewController {
    private func getResult() {
        let animalsTypes = chosenAnswers.map { $0.type }
        
        var animalsWithKeys: [AnimalType : Int] = [:]
        for animal in animalsTypes {
            animalsWithKeys[animal] = (animalsWithKeys[animal] ?? 0) + 1
        }
        let sortedAnimalsTypes = animalsWithKeys.sorted { $0.value > $1.value }
        guard let mostFrequencyType = sortedAnimalsTypes.first?.key else { return }
        setLabels(animal: mostFrequencyType)
    }
    
    private func setLabels(animal: AnimalType) {
        resultLabel.text = "Вы - \(animal.rawValue)"
        resultTextLabel.text = "\(animal.definition)"
    }
}

