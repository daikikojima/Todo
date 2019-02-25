//
//  Memo.swift
//  RealmSample
//
//  Created by Daiki Kojima on 2019/02/22.
//  Copyright © 2019 Daiki Kojima. All rights reserved.
//

import Foundation
import RealmSwift

class Memo: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var content: String = ""
}
