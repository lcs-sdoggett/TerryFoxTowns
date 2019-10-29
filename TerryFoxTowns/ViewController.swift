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
    
    func prependToLabel(this newText: String) {
        
        labelOutput.text! = newText + "\n" + labelOutput.text!
        
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
        
        guard let kmInputAsString = kmInput.text else{
            titleLabel.text = "Enter a Value"
            return
        }
        
        guard let kmInputAsDouble = Int(kmInputAsString) else{
            titleLabel.text = "Enter a Value"
            return
        }
        
        titleLabel.text = "The Terry Fox Legacy"
        
        resetLabel()
        
        switch kmInputAsDouble {
        case 5373...Int.max:
            prependToLabel(this: "Thunder Bay, ON")
            fallthrough
        case 5153...Int.max:
            prependToLabel(this: "Terrace Bay, ON")
            fallthrough
        case 4901...Int.max:
            prependToLabel(this: "Wawa, ON")
            fallthrough
        case 4675...Int.max:
            prependToLabel(this: "Sault Ste. Marie, ON")
            fallthrough
        case 4430...Int.max:
            prependToLabel(this: "Sudbury, ON")
            fallthrough
        case 4153...Int.max:
            prependToLabel(this: "Gravenhurst, ON")
            fallthrough
        case 3622...Int.max:
            prependToLabel(this: "Hamilton, ON")
            fallthrough
        case 3523...Int.max:
            prependToLabel(this: "Toronto, ON")
            fallthrough
        case 3508...Int.max:
            prependToLabel(this: "Scarborough Civic Centre, ON")
            fallthrough
        case 3488...Int.max:
            prependToLabel(this: "Millbrook, ON")
            prependToLabel(this: "Pickering, ON")
            fallthrough
        case 3123...Int.max:
            prependToLabel(this: "Ottawa, ON")
            fallthrough
        case 3113...Int.max:
            prependToLabel(this: "Just outside of Ottawa")
            fallthrough
        case 3030...Int.max:
            prependToLabel(this: "Hawkesbury, ON")
            fallthrough
        case 2917...Int.max:
            prependToLabel(this: "Montreal, QC")
            fallthrough
        



            



        default:
            return
        }
        
    }
        
}

