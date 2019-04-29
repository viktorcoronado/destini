//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
        
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartGameButton: UIButton!
    
    
    // Class properties
    var storyIndex : Int = 0
    let allStories = StoryBank()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        restartGameButton.isHidden = true
        nextStory()

    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if(sender.tag == 1){
            storyIndex = allStories.list[storyIndex].storyIndexWhenPathOneIsChosen
            nextStory()
        }
        else if (sender.tag == 2){
            storyIndex = allStories.list[storyIndex].storyIndexWhenPathTwoIsChosen
            nextStory()
        }
        
    }
    @IBAction func restartGamePressed(_ sender: UIButton) {
        storyIndex = 0
        topButton.isHidden = false
        bottomButton.isHidden = false
        restartGameButton.isHidden = true
        nextStory()
    }
    
    func nextStory(){
        
        storyTextView.text = allStories.list[storyIndex].storyText
        
        if(storyIndex < 3){
        topButton.setTitle(allStories.list[storyIndex].answer1, for: UIControl.State.normal)
        bottomButton.setTitle(allStories.list[storyIndex].answer2, for: UIControl.State.normal)
        }
            
        else{
            topButton.isHidden = true
            bottomButton.isHidden = true
            restartGameButton.isHidden = false
        }
    }
    
}


