//
//  ViewController.swift
//  DependencyInjection
//
//  Created by mac admin on 28/06/20.
//  Copyright © 2020 Kunal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var data:[EmailAccount] = []
    
    var data1 = [EmailAccount]()


    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        data = models()
    }
    
    func models() -> [EmailAccount] {
        return [Gmail(), Outlook(), Yahoo()]
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let account = data[indexPath.row]
        cell.textLabel?.text = account.domain
        
        return cell
    }
}



protocol EmailAccount {
    var userName:String {get}
    var domain:String {get}
}

class Gmail: EmailAccount {
    var userName: String {
        return "kunal"
    }
    var domain: String {
        return "gmail"
    }
    
    
}
class Outlook: EmailAccount {
    var userName: String {
        return "kunal"
    }
    var domain: String {
        return "outlook"
    }
    
}
class Yahoo: EmailAccount {
    var userName: String {
        return "kunal"
    }
    var domain: String {
        return "yahoo"
    }
    
}

