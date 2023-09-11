//
//  ViewController.swift
//  NetworkLayerTest
//
//  Created by Naveen Thunga on 09/09/23.
//

import UIKit
import YNetwork

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tryThis = TryThis()

        // Do any additional setup after loading the view.
        Task {
            let result = await tryThis.verifyEmail()
            print(result ?? "")
        }
        
    }

}


class TryThis {
    private let networkManager = NetworkManager()

    func verifyEmail() async -> Data? {
        let request = VerifyEmailRequst(email: "indy.ssa@mailinator.com")
        
        do {
            try await networkManager.submit(request)
            // handle success
            return nil
        } catch {
            // handle failure
            print("Failed")
        }
    }
}
