//
//  Story.swift
//  Destini
//
//  Created by Viktor Svensson on 2019-04-29.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    
    let storyText : String
    let answer1 : String
    let answer2: String
    let storyIndexWhenPathOneIsChosen : Int
    let storyIndexWhenPathTwoIsChosen : Int
    

    init(storyText: String, answer1: String, answer2: String, goToStoryIndexWhenPathOneIsChosen: Int, goToStoryIndexWhenPathTwoIsChosen: Int){
        self.storyText = storyText
        self.answer1 = answer1
        self.answer2 = answer2
        storyIndexWhenPathOneIsChosen = goToStoryIndexWhenPathOneIsChosen
        storyIndexWhenPathTwoIsChosen = goToStoryIndexWhenPathTwoIsChosen
    }
}

