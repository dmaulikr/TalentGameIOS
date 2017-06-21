//
//  ButtonControl.swift
//  TalentGame
//
//  Created by Rohit Dabra on 21/02/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import UIKit

@IBDesignable class ButtonControl: UIButton {
    
    //MARK: Properties
    
    var dimensions: [Dimension] = DimensionService.getAllDimensions()
    let screenSize: CGRect = UIScreen.main.bounds
    
    
    @IBInspectable var buttonSize: CGSize = CGSize(width: 120, height: 120){
        didSet {
            setupButton()
        }
    }
    
    @IBInspectable var buttonRadius: Float = 60{
        didSet {
            setupButton()
        }
    }
    
    @IBInspectable var isGame: Bool = false{
        didSet {
            setupButton()
        }
    }
    
    @IBInspectable var index: Int = 0{
        didSet {
            setupButton()
        }
    }
    
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupButton();
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton();
        
    }
    
//    required init(coder: NSCoder) {
//        super.init(coder: coder)
//        setupButton();
//    }
    
    
    
    //MARK: Private Methods
    private func setupButton() {
        
//        let a = screenSize.width/3;
//        let b = screenSize.height;
        
            if(index >= 6)
            {
                return;
            }
            
            // Add constraints
            self.translatesAutoresizingMaskIntoConstraints = false
            self.heightAnchor.constraint(equalToConstant: screenSize.width/3).isActive = true
            self.widthAnchor.constraint(equalToConstant: screenSize.width/3).isActive = true
            
            self.layer.cornerRadius = CGFloat(screenSize.width/6)
            self.backgroundColor = hexStringToUIColor(hex: Constants.colors[index]);
            self.tintColor = UIColor.white
            let key = "Game\(index + 1)_Title";
            let title: String = isGame ? dimensions[index].dimensionName : (key).localized;
        
            self.setTitle(title, for: .normal)
            self.contentEdgeInsets = UIEdgeInsetsMake(5,5,5,5)
            self.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping;
            self.titleLabel?.textAlignment = NSTextAlignment.center;
            self.titleLabel?.font = UIFont.boldSystemFont(ofSize: screenSize.width/27);
            self.setTitleColor(UIColor.white, for: [.highlighted, .selected, .normal])
            
            // Set the accessibility label
            self.accessibilityLabel = "Select \(title)"
            
        
            self.tag = index;
        
    }
}

