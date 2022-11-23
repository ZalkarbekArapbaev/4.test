//
//  Controller.swift
//  4.test
//
//  Created by zalkarbek on 23/11/22.
//

import Foundation

class Controller {
    private weak var view: ViewController!
    private var model: Model!
    
    var smile: [Smile] = []
    
    init(view: ViewController) {
        self.view = view
        self.model = Model(controller: self)
    }
    
    func setSmile(smile: [Smile]) {
        self.smile = smile
//        print("conr: \(smile)")
    }
    
    func getSmail() -> [Smile] {
//        print("conr: \(smile)")
        return smile
    }
    
    func updateSmileList(){
        model?.getRandomSmile()
    }
    
    func updateView() {
        view.updateViesh()
    }
    
    
}
