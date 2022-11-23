//
//  ViewController.swift
//  4.test
//
//  Created by zalkarbek on 23/11/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

  private lazy var textLabel: UILabel = {
       let label = UILabel()
       label.text = "Text"
       return label
   }()
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Registr", for: .normal)
        button.backgroundColor = .label
        button.addTarget(self, action: #selector(getApi), for: .touchUpInside)
        return button
    }()
    
    private var controller: Controller!
//    var smile: [Smile] = []
//    private var network = NetworkAPI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        self.controller = Controller(view: self)
//        controller.updateSmileList()
        // Do any additional setup after loading the view.
//        NetworkAPI().getSmile { smile in
//            self.textLabel.text! = smile[0].setup
            //self.viewDidLoad()
        
        viewshka()
        }
    
    func updateViesh() {
        DispatchQueue.main.async { [self] in
//            let randomNumer = Int.random(in: 0...9)
            let joke = self.controller.getSmail()
            textLabel.text = joke[0].setup
        }
    }
    
    func viewshka() {
        view.addSubview(textLabel)
        textLabel.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(60)
            make.left.equalTo(view.snp.left).offset(30)
            make.width.equalTo(300)
            make.height.equalTo(100)
        }
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(200)
            make.left.equalTo(view.snp.left).offset(150)
            make.width.equalTo(100)
            make.height.equalTo(50)
        }
    }
    
    @objc func getApi() {
//        controller.getSmail()
//        print(smile)
        controller.updateSmileList()
//        print(controller.updateSmileList())
    }


}

