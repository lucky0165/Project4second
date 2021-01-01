//
//  ListViewController.swift
//  Project4second
//
//  Created by Łukasz Rajczewski on 01/01/2021.
//

import UIKit

class ListViewController: UITableViewController {

    var websites = ["apple.com", "hackingwithswift.com", "google.com", "udemy.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PageCell", for: indexPath)

        cell.textLabel?.text = websites[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let destinationVC = storyboard?.instantiateViewController(identifier: "PageView") as? ViewController {
            destinationVC.selectedWebsite = websites[indexPath.row]
            navigationController?.pushViewController(destinationVC, animated: true)
        }
    }

}
