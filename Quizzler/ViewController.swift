//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions=questionBank()
    var pickedAnswer: Bool=false
    var counter: Int=0
    var correct: Int=0
    //Place your instance variables here
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        loadQuestion()
    }
    
    
    func loadQuestion(){
        super.viewDidLoad()
        
        let firstQuestion=allQuestions.list[counter]
        questionLabel.text=firstQuestion.questionText
        //counter=counter+1
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        var ans: Int=0
        counter=counter+1
        
        if  (allQuestions.list[counter].answer){
            ans=1
        }
        
        else{
            
            ans=2
        }
  
        
        if (sender.tag==ans){
            
            correct+=1
            
            let alert=UIAlertController(title: "Correct", message: "Move on to next question", preferredStyle: .alert)
            let nextQ=UIAlertAction(title: "Next", style: .default) { (UIAlertAction) in
                self.loadQuestion()
            }
            
            alert.addAction(nextQ)
            
            present(alert,animated:true,completion: nil)
            
            scoreLabel.text="Score: \(correct*100)"
            
            
        }
        
        else{
           
      
            
            let alert2=UIAlertController(title: "Incorrect", message: "Move on to next question", preferredStyle: .alert)
            let nextQ2=UIAlertAction(title: "Next", style: .default) { (UIAlertAction) in
                self.loadQuestion()
            }
            
            alert2.addAction(nextQ2)
            
            present(alert2,animated:true,completion: nil)
            
            
        }
        
        progressLabel.text="\(String(counter))/13"
        
        
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        
    }
    
    
    func checkAnswer() {
        
    }
    
    
    func startOver() {
       
    }
    

    
}
