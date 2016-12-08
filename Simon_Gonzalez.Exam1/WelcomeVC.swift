//
//  WelcomeVC.swift
//  
//
//  Created by macadmin on 2016-03-19.
//
//

import UIKit

class WelcomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //Var
    var actualUser: String = "";
    var moviesArray: [Movies] = [];
    var DetailObj = Movies();
    var globalIndex: Int = 0;
    
    //Label
    @IBOutlet weak var resultLbl: UILabel!
    //Image
    @IBOutlet weak var imgUser: UIImageView!
    //TableView
    @IBOutlet weak var MyTableMoviesVC: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MyTableMoviesVC.delegate = self;
        MyTableMoviesVC.dataSource = self;
        
        
        self.navigationController?.isNavigationBarHidden = false
        resultLbl.text = "Welcome:  \(actualUser)";
        
        imgUser.layer.cornerRadius = imgUser.frame.size.width/2
        imgUser.clipsToBounds = true
        imgUser.contentMode = .scaleToFill
        imgUser.image = UIImage(named: "loginimage")
        
        moviesArray = DetailObj.generateMyMovies();
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "go2DetailsVC"{
            let myMovieDetails = segue.destination as! DetailsVC;
            
            myMovieDetails.imgMovieInfo = moviesArray[globalIndex].profilePic; //Picture
            myMovieDetails.myTittle = moviesArray[globalIndex].tittle; //Tittle
            myMovieDetails.myDescription = moviesArray[globalIndex].description; //Description
            myMovieDetails.myPreview = moviesArray[globalIndex].review; //Preview
            myMovieDetails.myDirector = moviesArray[globalIndex].director; //Director

            
        }
    }
    
    
    // Para mi TABLE VIEW
    
    //1
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArray.count
    }
    
    //2
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    //3
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! TableViewCell
        
        globalIndex = (indexPath as NSIndexPath).row;
        
        cell.imageViewMovie.image = moviesArray[(indexPath as NSIndexPath).row].profilePic;
        cell.lblTitlle.text = moviesArray[(indexPath as NSIndexPath).row].tittle;
        cell.lblDescription.text = moviesArray[(indexPath as NSIndexPath).row].description;

        return cell
    }
    
    //4
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        globalIndex = (indexPath as NSIndexPath).row;
        self.performSegue(withIdentifier: "go2DetailsVC", sender: self)
        
    }

    
    
    

}
