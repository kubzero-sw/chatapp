//
//  MessageViewController.swift
//  chatapp
//
//  Created by Rashid Karina on 03.05.2023.
//

import UIKit

class MessageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var myTable: UITableView!
    override func viewDidLoad() {
        myTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        super.viewDidLoad()
        myTable.delegate = self
        myTable.dataSource = self
        view.backgroundColor = .systemBackground
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Sadi Moldir"
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = ConversationsViewController()
        self.navigationController!.pushViewController(vc, animated: true)
    }
    

}
