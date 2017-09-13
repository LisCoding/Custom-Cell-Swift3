//
//  ViewController.swift
//  customCell
//
//  Created by Liseth Cardozo Sejas on 9/13/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class CustomCellViewController: UITableViewController {
 
    var nums = [1, 90, 32, 23, 9, 12]
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! customCell
        cell.rightLabel.text = "\(nums[indexPath.row])"
        if nums[indexPath.row] > 24 {
            cell.leftButton.backgroundColor = UIColor.green
        } else {
            cell.leftButton.backgroundColor = UIColor.red
        }
        // return cell so that Table View knows what to draw in each row
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nums.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

