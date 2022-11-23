//
//  Model.swift
//  4.test
//
//  Created by zalkarbek on 23/11/22.
//

import Foundation

class Model {
    private weak var controller: Controller!
    private var network = NetworkAPI()
    
    
    init(controller: Controller) {
        self.controller = controller
    }
    
    func getRandomSmile() {
        network.getSmile() { smile in
            self.controller.setSmile(smile: smile)
            self.controller.updateView()
//            print(smile)
        }
   }
    
}

    




struct Smile: Codable {
    var setup: String
}
