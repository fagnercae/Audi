//
//  HomeTableViewController.swift
//  Audi
//
//  Created by Fagner Caetano on 03/08/20.
//

import UIKit
import GodAnimation

class HomeTableViewController: UITableViewController, UISearchBarDelegate {
    
    @IBOutlet weak var vehiclesTableView: UITableView!
    var vehiclesList: Array<Vehicles> = VehiclesDAO().returnAllVehicles()
    var vehiclesFiltered: Array<Vehicles>!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vehiclesTableView.delegate = self
        vehiclesTableView.dataSource = self
        searchBar.delegate = self
        vehiclesFiltered = vehiclesList
        setupInterface()
        tableView.keyboardDismissMode = .onDrag
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
        return vehiclesFiltered.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let vehicles = vehiclesFiltered[indexPath.row]
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
        let vehicle = vehiclesFiltered[indexPath.row]
        let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "details") as! DetailsViewController
        controller.selectedCar = vehicle
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            vehiclesFiltered.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.reloadData()
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        vehiclesFiltered = []
        
        if searchText == "" {
            vehiclesFiltered = vehiclesList
        }
        else {
            for car in vehiclesList {
                if car.model.lowercased().starts(with: searchText.lowercased()) {
                    vehiclesFiltered.append(car)
                }
            }
        }
        self.tableView.reloadData()
    }

}
