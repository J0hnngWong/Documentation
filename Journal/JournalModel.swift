//
//  JournalModel.swift
//  Journal
//
//  Created by 王嘉宁 on 2020/5/6.
//  Copyright © 2020 Johnny. All rights reserved.
//

import Foundation

class JournalModel {
    var id: UUID = UUID()
    var title: String = ""
    var detail: String = ""
    var imageName: String = ""
    var createDate: Date = Date()
    var lastUpdateDate: Date = Date()
}
