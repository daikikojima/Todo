//
//  ViewController.swift
//  RealmSample
//
//  Created by Daiki Kojima on 2019/02/22.
//  Copyright © 2019 Daiki Kojima. All rights reserved.
//

import UIKit
import RealmSwift
import MaterialComponents

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet var button: MDCFloatingButton!
    @IBOutlet var memoTable: UITableView!
    var realm: Realm!
    var lists: Results<Memo>!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.sizeToFit()
        memoTable.dataSource = self
        memoTable.register(UINib(nibName: "TodoViewCell", bundle: nil), forCellReuseIdentifier: "TodoViewCell")
        memoTable.estimatedRowHeight = 300
        memoTable.rowHeight = UITableView.automaticDimension
        realm = try! Realm()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        lists = realm.objects(Memo.self)
        memoTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoViewCell") as! TodoViewCell
        let memo = lists[indexPath.row]
        cell.titleLabel.text = memo.title
        cell.contentLabel.text = memo.content
        return cell
    }


}

