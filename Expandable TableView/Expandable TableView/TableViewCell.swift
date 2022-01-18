//
//  TableViewCell.swift
//  Expandable TableView
//
//  Created by 정현석 on 2022/01/18.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {

    static let identifier = "TableViewCell"
    
    // MARK: - Property
    let tableLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    // MARK: - configureUI
    func configureUI() {
        addSubview(tableLabel)
        
        tableLabel.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.leading.equalTo(20)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
