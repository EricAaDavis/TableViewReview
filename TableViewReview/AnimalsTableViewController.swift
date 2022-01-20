//
//  AnimalsTableViewController.swift
//  TableViewReview
//
//  Created by Eric Davis on 20/01/2022.
//

import UIKit

class AnimalsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    var animals: [Animal] = [
        Animal(animal: "🐘", animalName: "Elephant"),
        Animal(animal: "🐖", animalName: "Pig"),
        Animal(animal: "🦢", animalName: "Swan"),
        Animal(animal: "🦬", animalName: "Bison"),
        Animal(animal: "🐝", animalName: "Bee"),
        Animal(animal: "🐛", animalName: "Bug"),
        Animal(animal: "🐓", animalName: "Rooster")
    ]
    
    var selectedAnimal: Animal
    
    required init?(coder: NSCoder) {
        self.selectedAnimal = animals[0]
        super.init(coder: coder)
        
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as! AnimalTableViewCell
        // Configure the cell...
        
        if selectedAnimal.animalName == animals[indexPath.row].animalName {
            cell.backgroundColor = .blue
        } else {
            cell.backgroundColor = .clear
        }
        
        cell.animalLabel.text = animals[indexPath.row].animal
        cell.animalNameLabel.text = animals[indexPath.row].animalName

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        selectedAnimal = animals[indexPath.row]
        print(indexPath.row)
        tableView.reloadData()
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
