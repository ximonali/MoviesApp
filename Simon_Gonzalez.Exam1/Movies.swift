//
//  Movies.swift
//  Simon_Gonzalez.Exam1
//
//  Created by macadmin on 2016-03-19.
//  Copyright (c) 2016 macadmin. All rights reserved.
//

import UIKit

class Movies {
    
    var tittle: String; //EN VES DE STRING PUEDEN SER tipo: UILabel!
    var description: String;
    var review: String;
    var director: String;
    var profilePic: UIImage;
    var localArray = [Movies]()
    
    
    init(){
        tittle = "";
        description = "";
        review = "";
        director = "";
        profilePic = UIImage();
    }
    
    init(ptittle: String, pdescription: String, preview: String, pdirector: String,pProfilePic: UIImage){
        tittle = ptittle;
        description = pdescription;
        review = preview;
        director = pdirector;
        profilePic = pProfilePic;
        
    }
    
    func generateMyMovies ()-> [Movies]{
        
        let a = Movies(ptittle: "Deadpool", pdescription: "2016 ‧ Action/Adventure/Scifi/Fantasy ‧ 1 hr, 47 min", preview: "Based upon Marvel Comics' most unconventional anti-hero, DEADPOOL tells the origin story of former Special Forces operative turned mercenary Wade Wilson...", pdirector: "Tim Miller", pProfilePic: UIImage(named: "deadpool")!)
        
        let b = Movies(ptittle: "London Has Fallen", pdescription: "2016 ‧ Action/Adventure ‧ 1 hr, 39 min", preview: "The sequel to the worldwide smash hit Olympus Has Fallen begins in London, where the British Prime Minister has passed away under mysterious circumstances.", pdirector: "Babak Najafi", pProfilePic: UIImage(named: "london")!)
        
        let c = Movies(ptittle: "Zootopia", pdescription: "2016 ‧ Animation/Action/Adventure ‧ 1 hr, 48 min", preview: "The modern mammal metropolis of Zootopia is a city like no other. Comprised of habitat neighborhoods like ritzy Sahara Square and frigid Tundratown", pdirector: "Byron Howard, Rich Moore", pProfilePic: UIImage(named: "zootopia")!)
        
        let d = Movies(ptittle: "Star Wars: The Force Awakens", pdescription: "2015 ‧ Scifi/Fantasy ‧ 2 hr, 16 min", preview: "In this continuation of the Star Wars saga, balance returns to the Force as the First Order, emerging from the ashes of the Empire", pdirector: "J.J. Abrams", pProfilePic: UIImage(named: "starwars")!)
        
        let e = Movies(ptittle: "Risen", pdescription: "2016 ‧ Drama/Family ‧ 1 hr, 47 min", preview: "This film follows the epic Biblical story of the Resurrection, as told through the eyes of a non-believer.", pdirector: "Kevin Reynolds", pProfilePic: UIImage(named: "risen")!)
        
        localArray.append(a);
        localArray.append(b);
        localArray.append(c);
        localArray.append(d);
        localArray.append(e);
        
        
        return localArray
    }
    
    
    
}