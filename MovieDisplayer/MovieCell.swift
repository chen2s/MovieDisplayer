//
//  MovieCell.swift
//  MovieDisplayer
//
//  Created by novacloud on 19/09/18.
//  Copyright © 2018 Isaac. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {


    @IBOutlet weak var movieInfoStackView: UIStackView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var moviewImageView: UIImageView!
    
    var stacks : [UIStackView] = []
    var typeButton : UIButton?
    
    func configure(titulo:String, imagen: String ) {
        
        
        
        movieTitleLabel.text = titulo
        moviewImageView.image = UIImage(named: imagen)
        makeHeader()
        makeRooms()
    }
    
    
    fileprivate func makeHeader() {
        let languageType = UIButton(type: .custom)
        languageType.setTitle("SUB", for: .normal)
        languageType.titleLabel?.font = UIFont.systemFont(ofSize: 12.0)
        languageType.setTitleColor(UIColor(red: 0.227, green: 0.569, blue: 0.773, alpha: 1.00), for: .normal)
        languageType.contentHorizontalAlignment = .left
        movieInfoStackView.addArrangedSubview(languageType)
        
        typeButton = languageType
    }
    
    fileprivate func makeHourButton() -> UIButton {
        
        let hourbutton = UIButton(type: .custom)
        hourbutton.setTitle("10:00 am", for: .normal)
        hourbutton.titleLabel?.font = UIFont.systemFont(ofSize: 12.0)
        hourbutton.setTitleColor(UIColor.darkGray, for: .normal)
        hourbutton.backgroundColor = UIColor.white
        
        
        hourbutton.layer.borderWidth = 0.5
        hourbutton.layer.borderColor = UIColor.darkGray.cgColor
        hourbutton.layer.cornerRadius = 3
        hourbutton.clipsToBounds = true
        

        
        
        return hourbutton
    }
    
    fileprivate func makeTimeStack() -> UIStackView {
        
        let timeStack = UIStackView()
        timeStack.alignment = .fill
        timeStack.distribution = .fillEqually
        timeStack.axis = .horizontal
        timeStack.spacing = 20
        
       
        
        let hourButton1 = makeHourButton()
        let hourButton2 = makeHourButton()
        let hourButton3 = makeHourButton()
        
        timeStack.addArrangedSubview(hourButton1)
        timeStack.addArrangedSubview(hourButton2)
        timeStack.addArrangedSubview(hourButton3)
        
        timeStack.translatesAutoresizingMaskIntoConstraints = false
        timeStack.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
  
        
        return timeStack
        
    }
    
    
    
    
    fileprivate func makeRooms() {
        
 
        
        
       let rowOne = makeTimeStack()
        movieInfoStackView.addArrangedSubview(rowOne)
 
        
        let rowTwo = makeTimeStack()
        movieInfoStackView.addArrangedSubview(rowTwo)

        
        
        let rowThree = makeTimeStack()
        movieInfoStackView.addArrangedSubview(rowThree)

        
        
        let rowFour = makeTimeStack()
        movieInfoStackView.addArrangedSubview(rowFour)

        
        
        let rowFive = makeTimeStack()
        movieInfoStackView.addArrangedSubview(rowFive)

        
        let rowSix = makeTimeStack()
        movieInfoStackView.addArrangedSubview(rowSix)
   
        
        stacks.append(contentsOf: [rowOne,rowTwo,rowThree,rowFour,rowFive,rowSix])
        
    }
    
    
    override func prepareForReuse() {
        
        super.prepareForReuse()
        
        for aStack in stacks {
            aStack.removeFromSuperview()
        }
        
        stacks.removeAll()
        typeButton?.removeFromSuperview()
    }
    
    
    
    
}
