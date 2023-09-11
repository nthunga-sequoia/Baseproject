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

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func verifyEmailButtonTapped(_ sender: Any) {
        let tryThis = TryThis()
        Task {
            let result = await tryThis.verifyEmail()
            print(result ?? "")
        }

    }

}


class TryThis {
    private let networkManager = NetworkManager()

    func verifyEmail() async -> VerifyEmailResponse? {
        let request = VerifyEmailRequst(email: "s1demo.sequoia.com")
        do {
            let response : VerifyEmailResponse = try await networkManager.submit(request)
            // handle success
            return response
        } catch {
            // handle failure
            print("Failed")
        }
        return nil
    }
}
