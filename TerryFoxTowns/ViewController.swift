//
//  ViewController.swift
//  TerryFoxTowns
//
//  Created by Russell Gordon on 2019-10-26.
//  Copyright © 2019 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    // Outlets, constants, and variables defined here will be available for use anywhere below.
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var labelOutput: UILabel!
    @IBOutlet weak var kmInput: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    
    // MARK: Methods
    // This method runs once when the view is loaded.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Reset the label
        resetLabel()
        
        // Add a few lines of text
        appendToLabel(this: "Sunaina")
        appendToLabel(this: "Wellesley")
        appendToLabel(this: "Frisbee")
    }
    
    // Add to the content of the label
    // Use this function to add a new city to the label
    func appendToLabel(this newText: String) {
        
        // 1. Move to next line in the label (\n)
        // 2. Add the new text (newText)
        labelOutput.text! += "\n" + newText
        
    }
    
    // This function resets the contents of the label
    func resetLabel() {
        
        // Set the text
        labelOutput.text = ""
        
        // Resize UI
        resizeLabelAndScrollView()
        
    }
    
    // This function sizes the label and the scroll view so that the scroll view will scroll
    func resizeLabelAndScrollView() {
        
        // Resize the label to fit the current text it contains
        labelOutput.sizeToFit()
        
        // Set the scroll view size
        // 1. width same as it already was
        // 2. height same as label
        //    (recall label was just resized to fit new content)
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width
            , height: labelOutput.frame.size.height)

    }
    

    @IBAction func displayCities(_ sender: Any) {
        
        guard let kmInputAsString = kmInput.text, kmInput.text == nil else{
            titleLabel.text = "Enter a Value"
            return
        }
        
        guard let kmInputAsDouble = Double(kmInputAsString) else{
            titleLabel.text = "Enter a Value"
            return
        }
        
    }
        
}

