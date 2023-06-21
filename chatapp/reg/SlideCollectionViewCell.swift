//
//  SlideCollectionViewCell.swift
//  chatapp
//
//  Created by Rashid Karina on 19.05.2023.
//

import UIKit

class SlideCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var descriptionText: UILabel!
    
    @IBOutlet weak var authBtn: UIButton!
    @IBOutlet weak var regBtn: UIButton!
    @IBOutlet weak var slideImg: UIImageView!
    static let reuceId = "SlideCollectionViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configure(slide: Slides){
        slideImg.image = slide.img
        descriptionText.text = slide.text
        if slide.id == 3{
            regBtn.isHidden = false
            authBtn.isHidden = false
        }
    }
    @IBAction func regBtnClick(_ sender: Any) {
    }
    @IBAction func authBtnClick(_ sender: Any) {
    }
}
