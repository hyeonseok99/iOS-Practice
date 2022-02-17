//
//  ViewController.swift
//  Firebase Test
//
//  Created by 정현석 on 2022/02/17.
//

import UIKit
import Firebase
import FirebaseDatabase

class ViewController: UIViewController {

    var ref: DatabaseReference!
    @IBOutlet var firstData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        ref = Database.database().reference()
    
        ref.child("firstData").observeSingleEvent(of: .value) {snapshot in
            print("---> \(snapshot)")
            let value = snapshot.value as? String ?? ""
            DispatchQueue.main.async {
                self.firstData.text = value
            }
        }
    }


}

