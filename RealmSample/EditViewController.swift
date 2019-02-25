//
//  EditViewController.swift
//  RealmSample
//
//  Created by Daiki Kojima on 2019/02/22.
//  Copyright © 2019 Daiki Kojima. All rights reserved.
//

import UIKit
import MaterialComponents
import RealmSwift

class EditViewController: UIViewController {
    @IBOutlet var titleTextField: MDCTextField!
    @IBOutlet var contentTextField: MDCIntrinsicHeightTextView!
    var realm: Realm!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        realm = try! Realm()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func save() {
        let memo = Memo()
        memo.title = titleTextField.text!
        memo.content = contentTextField.text!
        try! realm.write {
            realm.add(memo)
        }
        self.dismiss(animated: true, completion: nil)
    }

}
