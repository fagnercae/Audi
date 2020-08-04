//
//  DetailsViewController.swift
//  Audi
//
//  Created by Fagner Caetano on 03/08/20.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var modelNameLabel: UILabel!
    @IBOutlet weak var detailsTextView: UITextView!
    
    var selectedCar: Vehicles? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        configUserInterface()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeButton(_ sender: Any) {
        if let navigation = self.navigationController {
            navigation.popToRootViewController(animated: true)
        }
    }
    
    func configUserInterface(){
        guard let car = selectedCar else { return }
        carImageView.image = UIImage(named: car.picture)
        modelNameLabel.text = car.model
        detailsTextView.text = car.details
        carImageView.layer.cornerRadius = 20
        detailsTextView.layer.cornerRadius = 20
    
    }

}
