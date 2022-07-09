//
//  ShowView1.swift
//  BasicLayoutApp2
//
//  Created by Consultant on 7/7/22.
//

import UIKit

class ShowView1: UIViewController {

    @IBOutlet weak var Show: UILabel!
    
    @IBOutlet weak var Shows: UIImageView!
   // var passedImage : UIImage! = nil
    
    var passedImage = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if passedImage == nil{
//            Shows.image = passedImage}else{Shows.image = UIImage(named:("Mean_\(Int.random(in: 0..<6))"))}
        Shows.image = passedImage
        //self.Shows.image = passedImage
        // Do any additional setup after loading the view.
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
