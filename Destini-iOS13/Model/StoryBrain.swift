//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    var labelStory = ""
    
    let stories = [
        Story(t: "You see a fork in the road",c1: "Take a left",c2: "Take a right"),
        Story(t: "You see a tiger",c1: "Shout for help",c2: "Play dead"),
        Story(t: "You find a treasure chest",c1: "Open it",c2: "Check for traps"),
        
        ]
    
    
    
    mutating func nextStory(_ userChoice: String) {
        if userChoice == stories[storyNumber].choice1 {
            storyNumber += 1
        } else {
            storyNumber += 2
        }
    }
    
    func getLabel() -> String {
        return stories[storyNumber].title
    }
    
    func getLabelButtonC1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getLabelButtonC2() -> String {
        return stories[storyNumber].choice2
    }

}


