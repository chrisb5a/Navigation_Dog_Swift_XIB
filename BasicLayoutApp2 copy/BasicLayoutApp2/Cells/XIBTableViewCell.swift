//
//  XIBTableViewCell.swift
//  BasicLayoutApp2
//
//  Created by Consultant on 7/6/22.
//

import UIKit

class XIBTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageView: UIImageView!
    
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var Slider: UISlider!
    
    var indexPath: IndexPath?
    var value: Float?
    
    
    
    
    func configure(imageStr: String, indexPath: IndexPath){
        self.ImageView.image = UIImage(named: imageStr)
        self.indexPath = indexPath
        self.Label.text = "\(indexPath) : Mean  - \(self.Slider.value)"
        self.Slider.value = self.value ?? 0.5}
    
    
    
    @IBAction func SliderAction(_ sender: UISlider) {
        
        self.value = sender.value
        self.Label.text = "\(indexPath ?? IndexPath(row: 0, section: 0)) : Mean  - \(self.Slider.value)"
    }
    
        
    @IBAction func UiButton(_ sender: UIButton) {
        self.Slider.value = 0.5
        self.Label.text = "\(indexPath ?? IndexPath(row: 0, section: 0)) : Mean  - \(self.Slider.value)"
        
        
        
    }
    
    
    
    
}
