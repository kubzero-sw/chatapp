//
//  SlidesSlide.swift
//  chatapp
//
//  Created by Rashid Karina on 19.05.2023.
//

import Foundation

class SlidesSlide {
    func getSlides() -> [Slides] {
        var slides: [Slides] = []
        let slide1 = Slides(id: 1,text: "text", img: #imageLiteral(resourceName: "first.jpg"))
        let slide2 = Slides(id: 2,text: "text", img: #imageLiteral(resourceName: "second.png"))
        let slide3 = Slides(id: 3,text: "text", img: #imageLiteral(resourceName: "third.jpg"))
        
        slides.append(slide1)
        slides.append(slide2)
        slides.append(slide3)
        return slides
    }
}
