//
//  ViewController.swift
//  NetworkLayerTest
//
//  Created by Naveen Thunga on 09/09/23.
//

import UIKit
import YNetwork

class ViewController: UIViewController {

    private let networkManager = NetworkManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        let configuration = NetworkManagerConfiguration()
        self.networkManager.configure(with: configuration)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func verifyEmailButtonTapped(_ sender: Any) {
        Task {
            let result = await verifyEmail()
            print(result ?? "")
        }

    }
    
    func verifyEmail() async -> VerifyEmailResponse? {
        let request = VerifyEmailRequest(email: "s1demo.sequoia.com")
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
    
    
    @IBAction func getProfile(_ sender: Any) {
        Task {
            var result = await getProfile()
            print(result ?? "")
        }
    }
    
    func getProfile() async -> UserProfileResponse? {
        let request = GetProfileRequest()
        do {
            let response : UserProfileResponse = try await networkManager.submit(request)
            return response
        } catch {
            // handle failure
            print("Failed")
        }
        return nil
    }
    
}
