//
//  ViewController.swift
//  ButtonOnTableView
//
//  Created by Amine CHATATE on 10/25/18.
//  Copyright © 2018 Amine CHATATE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myTable = ["Rabat", "Agadir", "Casa", "Ifrane"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? MyTableViewCell
        cell?.myLabel.text = self.myTable[indexPath.row]
        cell?.delegate = self
        cell?.index = indexPath
        return cell!
    }
}

extension ViewController: MyTableViewCellDelegate{
    func buttonAction(index: Int) {
        print(self.myTable[index])
    }
}
