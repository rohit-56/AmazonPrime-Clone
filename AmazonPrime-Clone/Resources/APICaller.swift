//
//  APICaller.swift
//  AmazonPrime-Clone
//
//  Created by Rohit Sharma on 29/01/23.
//

import Foundation


class APICaller {
    
    static let shared = APICaller()

    
    func getTrendingMovies(completion : @escaping (Result<[String],Error>) -> Void){
        
        guard let url = URL(string: "\(Key.Base_Url)trending/movie/day?api_key=\(Key.API_Key)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let data = data , error == nil
            else {return}
            
            do{
                let results = try JSONDecoder().decode([String].self, from: data)
                completion(.success(results))
            }catch{
                completion(.failure(error))
            }
        }
        task.resume()
    }
   
    
}
