//
//  StoryPromptViewController.swift
//  StoryPrompt
//
//  Created by Celil Çağatay Gedik on 24.10.2022.
//

import UIKit

class StoryPromptViewController: UIViewController {
    
    @IBOutlet weak var storyPromptTextView: UITextView!
    
    var storyPrompt: StoryPromptEntry?
    var isNewStoryPrompt = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        storyPromptTextView.text = storyPrompt?.description
        if isNewStoryPrompt {
            
            let saveButton = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveStoryPrompt))
            let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelStoryPrompt))
            
            navigationItem.rightBarButtonItem = saveButton
            navigationItem.leftBarButtonItem = cancelButton
        }
    }
    
    
    
    @objc func cancelStoryPrompt() {
        performSegue(withIdentifier: "CancelStoryPrompt", sender: nil)
    }
    
    @objc func saveStoryPrompt() {
        NotificationCenter.default.post(name: .StoryPromptSaved, object: storyPrompt)
        performSegue(withIdentifier: "SaveStoryPrompt", sender: nil)
    }
}

extension Notification.Name{
    //MARK: - this will allow us to send the story prompt object using notifications
    static let StoryPromptSaved = Notification.Name("StoryPromptSave")
    
}

