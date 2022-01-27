//
//  ViewController2.swift
//  Closure Test
//
//  Created by 정현석 on 2022/01/27.
//

import UIKit

class ViewController2: UIViewController {

    var favoritePet = "dog"

    func getFavoritePet() -> String {
        //returns the pet that is selected, as a String
        return favoritePet
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .systemGray2

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
        favoritePet = "cat1"
        if let vc = presentingViewController as? ViewController {
            //before dismissing the Form ViewController, pass the data inside the closure
            dismiss(animated: true, completion: {
                vc.setPet(self.getFavoritePet())
            })
        }
    }

    @objc func buttonAction2(sender: UIButton!) {
        favoritePet = "cat2"
        if let vc = presentingViewController as? ViewController {
            //before dismissing the Form ViewController, pass the data inside the closure
            dismiss(animated: true, completion: {
                vc.setPet(self.getFavoritePet())
            })
        }
    }

    func receivedData(_ receivedData: String) {
        //override the label with the parameter received in this method
        print("_hyeon receivedData: ", receivedData)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
