//
//  MyTableViewDemoController.swift
//  BasicLayoutApp2
//
//  Created by Consultant on 7/6/22.
//

import UIKit

class MyTableViewDemoController: UIViewController {

    @IBOutlet weak var DemoTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.DemoTableView.backgroundColor = .systemCyan
        self.DemoTableView.dataSource = self
        self.DemoTableView.register(UINib(nibName: "XIBTableViewCell", bundle: nil), forCellReuseIdentifier:"XIBTableViewCell" )

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





extension MyTableViewDemoController: UITableViewDataSource, UITableViewDelegate{
    
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        
        
        
        return "sections \(section)"
    
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 25
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    NSLog("You selected cell number: \(indexPath.row)!")


    self.performSegue(withIdentifier: "ShowView1", sender: self)
}

//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
//
//
//        let vc = storyboard?.instantiateViewController(withIdentifier: "showView1") as? ShowView1
//        vc?.passedImage = UIImage(named: ("Mean_\(Int.random(in: 0..<6))"))!
//        self.navigationController?.pushViewController(vc!, animated: true)
//        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath ) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "XIBTableViewCell") as! XIBTableViewCell
        
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "XIBTableViewCell", for: indexPath) as? XIBTableViewCell else {
//            return UITableViewCell()
           
//        }
       
        
        
       // guard let cell = tableView.dequeueReusableCell(withIdentifier: "StoryboardDemoTableViewCell", for: indexPath) as? StoryboardDemoTableViewCell else {
       //     return UITableViewCell()
        //}
        //cell.ImageView.image = UIImage(named: "Dobb")
       
    
        
        //if Silder.value == 0.5{str = "Pit"}
        
            
        //cell.configure(imageStr: "Mean_1", indexPath: indexPath)
        var imgs = "Mean_\(Int.random(in: 0..<6))"
        cell.configure(imageStr: imgs,indexPath: indexPath)
        
        return cell
    }
    
     
    
   
    
    }
