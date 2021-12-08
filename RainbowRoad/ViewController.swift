//
//  ViewController.swift
//  RainbowRoad
//
//  Created by admin on 08/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rainbowTable: UITableView!
    let colors = [UIColor.red, UIColor.blue, UIColor.green, UIColor.orange, UIColor.purple, UIColor.yellow]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        rainbowTable.dataSource = self
        rainbowTable.delegate  = self
        
        // Do any additional setup after loading the view.
    }
    
    


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstTable", for: indexPath)

        cell.backgroundColor = self.colors[indexPath.row % self.colors.count]
        return cell
    }

}


