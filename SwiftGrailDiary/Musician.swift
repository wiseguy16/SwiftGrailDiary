//
//  Musician.swift
//  SwiftGrailDiary
//
//  Created by Gregory Weiss on 8/17/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

import Foundation

class Musician
{
    
    let name: String
    let paymentPerShow: String
    let foundedOrBorn: String
    let bio: String
    let musicianImage: String
    
    init(dictionary: NSDictionary)
    {
        name = dictionary["name"] as! String
        paymentPerShow = dictionary["paymentPerShow"] as! String
        foundedOrBorn = dictionary["foundedOrBorn"] as! String
        bio = dictionary["bio"] as! String
        musicianImage = dictionary["musicianImage"] as! String
    }
    
    
    
    
    
}

/*
 name": "Celine Dion",
 "paymentPerShow": "$2.1 million",
 "foundedOrBorn": "Born: March 30, 1968",
 "bio": "Canadian lady Celine Dion has proved that Titanic is still popular when she bagged a hefty $279,200,000 for her 132 shows between 2008 and 2009.",
 "musicianImage": "celinedion"
 },
 */
