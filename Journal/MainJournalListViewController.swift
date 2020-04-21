//
//  MainJournalListViewController.swift
//  Journal
//
//  Created by 王嘉宁 on 2020/4/21.
//  Copyright © 2020 Johnny. All rights reserved.
//

import Foundation
import UIKit

class MainJournalListViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            let debugVC = DebugViewController(nibName: "DebugViewController", bundle: Bundle.main)
            present(debugVC, animated: true, completion: nil)
        }
    }
}
