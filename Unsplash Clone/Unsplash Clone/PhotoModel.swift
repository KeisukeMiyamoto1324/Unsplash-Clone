//
//  PhotoModel.swift
//  Unsplash Clone
//
//  Created by Keisuke Miyamoto on 2024/02/18.
//

import Foundation
import SwiftUI

// Model
struct PhotoModel {
    let id = UUID()
    let photo: String
    let photographerName: String
    let category: Categorys
}

enum Categorys: String, CaseIterable {
    case Editorial = "Editorial"
    case Wallpapers = "Wallpapers"
    case CoolTones = "Cool Tones"
    case Nature = "Nature"
    case _3DRenders = "3DRenders"
    case Travel = "Travel"
    case Architecture_Interiors = "Architecture & Interiors"
    case Animal = "Animal"
    case Film = "Film"
    case People = "People"
}

let photoList: [PhotoModel] = [PhotoModel(photo: "post1", photographerName: "AAA", category: Categorys.Editorial),
                               PhotoModel(photo: "post2", photographerName: "BBB", category: Categorys.Wallpapers),
                               PhotoModel(photo: "post3", photographerName: "CCC", category: Categorys.CoolTones),
                               PhotoModel(photo: "post4", photographerName: "DDD", category: Categorys.Nature),
                               PhotoModel(photo: "post5", photographerName: "EEE", category: Categorys._3DRenders),
                               PhotoModel(photo: "post6", photographerName: "FFF", category: Categorys.Travel),
                               PhotoModel(photo: "post7", photographerName: "GGG", category: Categorys.Architecture_Interiors),
                               PhotoModel(photo: "post8", photographerName: "HHH", category: Categorys.Animal),
                               PhotoModel(photo: "post9", photographerName: "III", category: Categorys.Film),
                               PhotoModel(photo: "post10", photographerName: "III", category: Categorys.People),
                               PhotoModel(photo: "post11", photographerName: "AAA", category: Categorys.Editorial),
                               PhotoModel(photo: "post22", photographerName: "BBB", category: Categorys.Wallpapers),
                               PhotoModel(photo: "post13", photographerName: "CCC", category: Categorys.CoolTones),
                               PhotoModel(photo: "post14", photographerName: "DDD", category: Categorys.Nature),
                               PhotoModel(photo: "post15", photographerName: "EEE", category: Categorys._3DRenders),
                               PhotoModel(photo: "post16", photographerName: "FFF", category: Categorys.Travel),
                               PhotoModel(photo: "post17", photographerName: "GGG", category: Categorys.Architecture_Interiors),
                               PhotoModel(photo: "post18", photographerName: "HHH", category: Categorys.Animal),
                               PhotoModel(photo: "post19", photographerName: "III", category: Categorys.Film),
                               PhotoModel(photo: "post20", photographerName: "III", category: Categorys.People),
                               PhotoModel(photo: "post21", photographerName: "AAA", category: Categorys.Editorial),
                               PhotoModel(photo: "post22", photographerName: "BBB", category: Categorys.Wallpapers),
                               PhotoModel(photo: "post23", photographerName: "CCC", category: Categorys.CoolTones),
                               PhotoModel(photo: "post24", photographerName: "DDD", category: Categorys.Nature),
                               PhotoModel(photo: "post25", photographerName: "EEE", category: Categorys._3DRenders),
                               PhotoModel(photo: "post26", photographerName: "FFF", category: Categorys.Travel),
                               PhotoModel(photo: "post27", photographerName: "GGG", category: Categorys.Architecture_Interiors),
                               PhotoModel(photo: "post28", photographerName: "HHH", category: Categorys.Animal),
                               PhotoModel(photo: "post29", photographerName: "III", category: Categorys.Film),
                               PhotoModel(photo: "post30", photographerName: "III", category: Categorys.People),
                               PhotoModel(photo: "post31", photographerName: "AAA", category: Categorys.Editorial),
                               PhotoModel(photo: "post32", photographerName: "BBB", category: Categorys.Wallpapers),
                               PhotoModel(photo: "post33", photographerName: "CCC", category: Categorys.CoolTones),
                               PhotoModel(photo: "post34", photographerName: "DDD", category: Categorys.Nature),
                               PhotoModel(photo: "post35", photographerName: "EEE", category: Categorys._3DRenders),
                               PhotoModel(photo: "post36", photographerName: "FFF", category: Categorys.Travel),
                               PhotoModel(photo: "post37", photographerName: "GGG", category: Categorys.Architecture_Interiors),
                               PhotoModel(photo: "post38", photographerName: "HHH", category: Categorys.Animal),
                               PhotoModel(photo: "post39", photographerName: "III", category: Categorys.Film),
                               PhotoModel(photo: "post40", photographerName: "III", category: Categorys.People),]

//let categorys: [String] = ["Editorial", "Wallpapers", "Cool Tones", "Nature", "3DRenders", "Travel", "Architecture & Interiors", "Animal"]
