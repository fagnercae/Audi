//
//  HomeTableViewController.swift
//  Audi
//
//  Created by Fagner Caetano on 03/08/20.
//

import UIKit
import GodAnimation

class HomeTableViewController: UITableViewController {
    
    @IBOutlet weak var vehiclesTableView: UITableView!
    let vehiclesList: Array<Vehicles> = VehiclesDAO().returnAllVehicles()

    override func viewDidLoad() {
        super.viewDidLoad()
        vehiclesTableView.delegate = self
        vehiclesTableView.dataSource = self
        setupInterface()
    }
    
    // MARK: - Methods
    
    func setupInterface() {
        overrideUserInterfaceStyle = .dark
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vehiclesList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let vehicles = vehiclesList[indexPath.row]
        cell.carModelNameLabel.text = vehicles.model
        cell.carImageView.image = UIImage(named: vehicles.picture)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        GodAnimation.cellAnimation(type: .zoom, cell: cell, indexPath: indexPath) {  }
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vehicle = vehiclesList[indexPath.row]
        let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "details") as! DetailsViewController
        controller.selectedCar = vehicle
        self.navigationController?.pushViewController(controller, animated: true)
    }

}
