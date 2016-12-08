//
//  DetailsVC.swift
//  
//
//  Created by macadmin on 2016-03-19.
//
//

import UIKit

class DetailsVC: UIViewController {

    //Var
    var myTittle: String = "";
    var myDescription: String = "";
    var myPreview: String = "";
    var myDirector: String = "";
    var imgMovieInfo: UIImage!;
    
    //Controls
    @IBOutlet weak var MoviePicture: UIImageView!
    @IBOutlet weak var lblTittle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblPreview: UILabel!
    @IBOutlet weak var lblDirector: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MoviePicture.image = imgMovieInfo;
        lblTittle.text = "Tittle: \(myTittle)";
        lblDescription.text = "Description: \(myDescription)";
        lblPreview.text = "Preview: \(myPreview)";
        lblDirector.text = "Director: \(myDirector)";
        
        MoviePicture.layer.cornerRadius = MoviePicture.frame.size.width/2
        MoviePicture.clipsToBounds = true
        MoviePicture.contentMode = .scaleToFill
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
