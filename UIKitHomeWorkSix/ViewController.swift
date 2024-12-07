//
//  ViewController.swift
//  UIKitHomeWorkSix
//
//  Created by Масуд Гаджиев on 03.12.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let tableData = CardModel.allCard

    lazy var tableViewCard: UITableView = {
        $0.dataSource = self
        $0.register(CardView.self, forCellReuseIdentifier: CardView.identifier)
        $0.separatorStyle = .none
        return $0
    }(UITableView(frame: view.frame, style: .plain))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableViewCard)
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CardView.identifier, for: indexPath) as? CardView else { return UITableViewCell() }
        let card = tableData[indexPath.row]
        cell.setupCell(card: card)
        cell.selectionStyle = .none
        return cell
    }
    
    
}

