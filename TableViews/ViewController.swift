//
//  ViewController.swift
//  TableViews
//
//  Created by Alex Weimers on 2019-04-14.
//  Copyright © 2019 Alex Weimers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = "\(Int(slider.value*20)) x \(indexPath.row + 1) = \((Int(slider.value * 20)*(indexPath.row + 1)))"
        
        return cell
    }

    @IBAction func sliderMoved(_ sender: UISlider) {
        
         table.reloadData()
    }
}

