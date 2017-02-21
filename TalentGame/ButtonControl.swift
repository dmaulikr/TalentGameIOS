//
//  ButtonControl.swift
//  TalentGame
//
//  Created by Rohit Dabra on 21/02/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import UIKit

@IBDesignable class ButtonControl: UIStackView {
    
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    
    var rating = 0 {
        didSet {
            //updateButtonSelectionStates()
        }
    }
    
    
    @IBInspectable var buttonSize: CGSize = CGSize(width: 120, height: 120){
        didSet {
            setupButtons()
        }
    }
    @IBInspectable var buttonCount: Int = 2{
        didSet {
            setupButtons()
        }
    }
    @IBInspectable var buttonRadius: Float = 60{
        didSet {
            setupButtons()
        }
    }
    
    @IBInspectable var startIndex: Int = 0{
        didSet {
            setupButtons()
        }
    }
    
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons();
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons();
    }
    
    
    
    //MARK: Private Methods
    private func setupButtons() {
        
        // clear any existing buttons
        for button in ratingButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        ratingButtons.removeAll()
        
        var i = startIndex;
        
        //var dimensions: [Dimension] = DimensionService.getAllDimensions()
        
        for index in 0..<buttonCount {
            
            // Create the button
            let button = UIButton(type: .custom)
            
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: buttonSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: buttonSize.width).isActive = true
            
            button.layer.cornerRadius = CGFloat(buttonRadius)
            button.backgroundColor = hexStringToUIColor(hex: Constants.colors[i]);            button.tintColor = UIColor.white
            //button.setTitle(dimensions[index].dimensionName, for: .normal)
            button.setTitleColor(UIColor.white, for: [.highlighted, .selected, .normal])
            
            // Set the accessibility label
            button.accessibilityLabel = "Set \(index + 1) star rating"
            
            
            // Add the button to the stack
            addArrangedSubview(button)
            
            // Add the new button to the rating button array
            ratingButtons.append(button)
            
            i += 1;
            
        }
        
    }
}

