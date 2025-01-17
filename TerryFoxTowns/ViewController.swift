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
        appendToLabel(this: "Enter A Value")
        }
    
    // Add to the content of the label
    // Use this function to add a new city to the label
    func appendToLabel(this newText: String) {
        
        // 1. Move to next line in the label (\n)
        // 2. Add the new text (newText)
        labelOutput.text! += "\n" + newText
        
    }
    
    // Add text to end of the existing label
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
        
        // Set title label to "Type a Number" if can't be converted
        // If it can be converted, convert it
        guard let kmInputAsString = kmInput.text else{
            titleLabel.text = "Type a Number"
            return
        }
        
        // Set title label to "Type a Number" if can't be converted
        // If it can be converted, convert it
        guard let kmInputAsInt = Int(kmInputAsString) else{
            titleLabel.text = "Type a Number"
            return
        }
        
        // Set title label to "Type a Positive Number" if the number is less then 0
        if kmInputAsInt > 0 {
            titleLabel.text = "Type a Positive Number"
        }
        
        // Set Title Label Back
        titleLabel.text = "The Terry Fox Legacy"
        
        resetLabel()
        
        // Switch statement
        switch kmInputAsInt {
        case 5373...:
            prependToLabel(this: "Thunder Bay, ON")
            fallthrough
        case 5153...:
            prependToLabel(this: "Terrace Bay, ON")
            fallthrough
        case 4901...:
            prependToLabel(this: "Wawa, ON")
            fallthrough
        case 4675...:
            prependToLabel(this: "Sault Ste. Marie, ON")
            fallthrough
        case 4430...:
            prependToLabel(this: "Sudbury, ON")
            fallthrough
        case 4153...:
            prependToLabel(this: "Gravenhurst, ON")
            fallthrough
        case 3622...:
            prependToLabel(this: "Hamilton, ON")
            fallthrough
        case 3523...:
            prependToLabel(this: "Toronto, ON")
            fallthrough
        case 3508...:
            prependToLabel(this: "Scarborough Civic Centre, ON")
            fallthrough
        case 3488...:
            prependToLabel(this: "Millbrook, ON")
            prependToLabel(this: "Pickering, ON")
            fallthrough
        case 3123...:
            prependToLabel(this: "Ottawa, ON")
            fallthrough
        case 3113...:
            prependToLabel(this: "Just outside of Ottawa")
            fallthrough
        case 3030...:
            prependToLabel(this: "Hawkesbury, ON")
            fallthrough
        case 2917...:
            prependToLabel(this: "Montreal, QC")
            fallthrough
        case 2663...:
            prependToLabel(this: "Quebec City, QC")
            fallthrough
        case 2592...:
            prependToLabel(this: "Highway 20, QC")
            fallthrough
        case 2426...:
            prependToLabel(this: "Highway 185, QC")
            fallthrough
        case 2256...:
            prependToLabel(this: "Perth-Andover, NB")
            fallthrough
        case 2214...:
            prependToLabel(this: "Bristol, NB")
            fallthrough
        case 1865...:
            prependToLabel(this: "Highway 2, west of Moncton, NB")
            fallthrough
        case 1728...:
            prependToLabel(this: "Charlottetown, PEI")
            fallthrough
        case 1373...:
            prependToLabel(this: "Dartmouth, NS")
            fallthrough
        case 1278...:
            prependToLabel(this: "Highway 7, NS")
            prependToLabel(this: "Sheet Harbour, NS")
            fallthrough
        case 882...:
            prependToLabel(this: "Port-Aux-Basques, NF")
            fallthrough
        case 542...:
            prependToLabel(this: "South Brook Junction, NF")
            fallthrough
        case 346...:
            prependToLabel(this: "Gander, NF")
            fallthrough
        case 0...:
            prependToLabel(this: "St. John’s, NF")
            fallthrough
        default:
            return
        }
        
    }
        
}

