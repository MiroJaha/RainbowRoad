//
//  ViewController.swift
//  RainbowRoad
//
//  Created by admin on 06/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let colors: [UIColor] = [.red,.orange,.yellow,.green,.blue,.purple]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        
        return cell
    }
}
