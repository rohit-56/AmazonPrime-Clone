//
//  TrendingResponse.swift
//  AmazonPrime-Clone
//
//  Created by Rohit Sharma on 02/02/23.
//

import Foundation

struct TrendingResponse : Codable{
    let results : [Title]
}

struct Title : Codable{
    let id : Int
    let media_type : String?
   // let original_language : String?
    let original_title : String?
    let overview : String?
 //   let popularity : String?
    let poster_path : String?
    let release_date : String?
    let title : String?
    let vote_average : Double
    let vote_count : Int
    
}
