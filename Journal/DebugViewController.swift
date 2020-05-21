//
//  DebugViewController.swift
//  Journal
//
//  Created by 王嘉宁 on 2020/4/21.
//  Copyright © 2020 Johnny. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import RxSwift
import RxCocoa

class DebugViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    let textView = UITextView()
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        renderSubviews()
    }
    
    func renderSubviews() {
        stackView.addArrangedSubview(textView)
        textView.snp.makeConstraints { (make) in
            make.height.equalTo(200)
        }
        textView.backgroundColor = UIColor.groupTableViewBackground
        
        let addButton = UIButton()
        addButton.setTitleColor(UIColor.black, for: .normal)
        addButton.setTitle("插入数据", for: .normal)
        addButton.rx.tap.subscribe(onNext: {
            let model = JournalModel()
            model.title = "title1"
            model.detail = "detail1"
            model.createDate = Date()
            model.lastUpdateDate =  model.createDate
            model.imageName = "image1"
            DatabaseManager.shared.InsertData(model: model)
            print("insert")
        }).disposed(by: disposeBag)
        stackView.addArrangedSubview(addButton)
        
        let searchButton = UIButton()
        searchButton.setTitleColor(UIColor.black, for: .normal)
        searchButton.setTitle("查询数据", for: .normal)
        searchButton.rx.tap.subscribe(onNext: {
            let modelArray = DatabaseManager.shared.queryData()
            for model in modelArray {
                model.printData()
            }
        }).disposed(by: disposeBag)
        stackView.addArrangedSubview(searchButton)
    }
}
