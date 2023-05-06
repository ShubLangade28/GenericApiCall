//
//  NetworkManager.swift
//  GenericApiCall
//
//  Created by PHN Tech 2 on 06/05/23.
//

import Foundation

class NetworkManager{
    
    let urlSession : URLSession?
    
    init() {
        urlSession = URLSession(configuration: .default)
    }
    
    func getApiData<T:Decodable>(requestURL : String, resultType : T.Type, completionHandler : @escaping (_ result : T)->()){
        
        guard let url = URL(string: requestURL) else{return}
        
        let task = urlSession?.dataTask(with: url, completionHandler: { data, response, error in
            if error == nil{
                guard let response = response as? HTTPURLResponse else{return}
                print(response.statusCode)
                
                guard let data else{return}
                
                do{
                    let result = try JSONDecoder().decode(T.self, from: data)
                    completionHandler(result)
                }catch let e{
                    print(e.localizedDescription)
                }
            }
        })
        task?.resume()
    }
}

class UsersData{
    private let networkManager : NetworkManager

    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }
    
    let userApiUrl = "https://dummyjson.com/users"
    
    func getUserData(){
        networkManager.getApiData(requestURL: userApiUrl, resultType: User.self) { result in
            print(result.users)
        }
    }
}

class ProductData{
    private let networkManager : NetworkManager

    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }
    
    let productApiUrl = "https://dummyjson.com/products"
    
    func getProductData(){
        networkManager.getApiData(requestURL: productApiUrl, resultType: ProductResponse.self) { result in
            print(result.products)
        }
    }
}
