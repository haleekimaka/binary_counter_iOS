//
//  ViewController.swift
//  binaryCounter
//
//  Created by Arin Halicki on 1/24/18.
//  Copyright © 2018 Arin Halicki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let numOfRows = 16
    
    var total = 0
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        totalLabel.text = "Total: \(total)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numOfRows
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "numCell", for: indexPath) as! NumCell
        cell.delegate = self
        let value = pow(10.0, indexPath.row)
        cell.value = Int(NSDecimalNumber(decimal: value))
        cell.numLabel.text = String(cell.value)
        return cell
    }
}

extension ViewController: NumCellDelegate {
    
    func addToTotal(_ num: Int) {
        total += num
        totalLabel.text = " Total: \(total)"
    }
    
}
