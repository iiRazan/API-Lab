//
//  ViewController.swift
//  API
//
//  Created by Razan on 09/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getData()
//        let url = "https://imsea.herokuapp.com/api/1?q=putin%20on%20a%20horse"
    }
    func getData(){
    var HorseURL = URLComponents()
    HorseURL.scheme = "https"
    HorseURL.host = "imsea.herokuapp.com"
    HorseURL.path = "/api/1?q=putin%20on%20a%20horse"
   
    
//    Statr of URL Request
    let HorseRequestURL = HorseURL.url!
    let HorseRequest = URLRequest(url: HorseRequestURL)
    
//    End of URL Request
    
//    Start URL SESSION
    let SessionConfig = URLSessionConfiguration.default
    SessionConfig.allowsCellularAccess = false
    SessionConfig.httpShouldSetCookies = false
    
    let HorseSession = URLSession(configuration: SessionConfig)
        
//        Trigger Session Data Task method (Response)
        let fetchDataTask = HorseSession.dataTask(with: HorseRequest) {
            (data: Data!, response: URLResponse?, err: Error?) in
            print(String(data: data, encoding: .utf8))
        }
        fetchDataTask.resume()
}
   
}
