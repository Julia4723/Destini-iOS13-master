//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        storyLabel.text = story.stories.first?.title

        choice1Button.setTitle("Take a left", for: .normal)
        choice2Button.setTitle("Take a right", for: .normal)

    }

    @IBAction func choiceMaid(_ sender: UIButton) {
        let userChois = sender.currentTitle!
        let newStoryLabel = story.nextStory(userChois)
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        storyLabel.text = story.getLabel()
        choice1Button.setTitle(story.getLabelButtonC1(), for: .normal)
        choice2Button.setTitle(story.getLabelButtonC2(), for: .normal)
        
    }
    
}

