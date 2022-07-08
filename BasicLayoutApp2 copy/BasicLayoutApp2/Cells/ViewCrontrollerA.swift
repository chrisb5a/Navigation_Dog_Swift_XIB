//
//  ViewControllerA.swift
//  BasicLayoutApp2
//
//  Created by Consultant on 7/6/22.
//

import UIKit

class ViewControllerA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier == "ShowSegue" {
            guard segue.destination is MyTableViewDemoController else { return }
    
            
            
        } else{}
    }
    
    
    
    
    @IBAction func Nav(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "ShowSegue", sender: nil)
        
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
