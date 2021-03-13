//
//  ViewController.swift
//  SimpleTableViewExample
//
//  Created by Student on 13.03.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let stroki: [String] = ["1 строка", "2 строка", "3 строка", "4 строка", "5 строка"]
    let cellReuseIdentifier = "cell"
    var tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
                let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
                let displayWidth: CGFloat = self.view.frame.width
                let displayHeight: CGFloat = self.view.frame.height
                tableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
                view.addSubview(tableView)
                tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
                tableView.delegate = self
                tableView.dataSource = self
        }
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return self.stroki.count
            }

            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell:UITableViewCell = (self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell?)!
                cell.textLabel?.text = self.stroki[indexPath.row]
                return cell
            }
            func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                print("You tapped cell number \(indexPath.row).")
            }
    



}

