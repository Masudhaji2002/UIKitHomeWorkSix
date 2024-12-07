//
//  CardModel.swift
//  UIKitHomeWorkSix
//
//  Created by Масуд Гаджиев on 03.12.2024.
//

import Foundation

struct CardModel {
    let fullName: String
    let image: String
    let title: String
    let date: String
    let description: String
    
    static var allCard: [CardModel] {
        [
            CardModel(fullName: "Имя Фамилия", image: "image-1", title: "Заголовок", date: "20 ноября 2024", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore "),
            
            CardModel(fullName: "Имя Фамилия", image: "image-2", title: "Заголовок", date: "19 ноября 2024", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore ")
        ]
    }
}
