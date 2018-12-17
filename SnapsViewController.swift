//
//  SnapsViewController.swift
//  Snapchat
//
//  Created by Ely Barros on 13/12/18.
//  Copyright © 2018 Ely. All rights reserved.
//

import UIKit

class SnapsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logoutTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
