//
//  ViewController.swift
//  Closure Test
//
//  Created by 정현석 on 2022/01/27.
//

import UIKit

class ViewController: UIViewController {

    var completionHandler: ((String) -> (String))?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additioznal setup after loading the view.
        self.view.backgroundColor = .systemGray

        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button.backgroundColor = .green
        button.setTitle("Test Button", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        self.view.addSubview(button)

        let button2 = UIButton(frame: CGRect(x: 100, y: 200, width: 100, height: 50))
        button2.backgroundColor = .green
        button2.setTitle("Test Button2", for: .normal)
        button2.addTarget(self, action: #selector(buttonAction2), for: .touchUpInside)

        self.view.addSubview(button2)
    }

    @objc func buttonAction(sender: UIButton!) {
        let vc = ViewController2()
        vc.modalPresentationStyle = .overFullScreen
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true, completion: nil)
    }

    @objc func buttonAction2(sender: UIButton!) {
        let vc = ViewController2()
        vc.modalPresentationStyle = .overFullScreen
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true, completion: {
            vc.receivedData("test2")
        })
    }

    func setPet(_ pet: String) {
        //override the label with the parameter received in this method
        print("_hyeon favorite pet: ", pet)
    }
}

