//
//  AnimalListTableViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Ian Cervone on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalListTableViewController: UITableViewController {

  var animals = ZooAnimal.zooAnimals
  
  let amphibians = ZooAnimal.amphibian
  let birds = ZooAnimal.bird
  let insects = ZooAnimal.insect
  let mammals = ZooAnimal.mammal
  let reptiles = ZooAnimal.reptile
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

  
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }

  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      switch section {
      case 0:
        return amphibians.count
      case 1:
        return birds.count
      case 2:
        return insects.count
      case 3:
        return mammals.count
      case 4:
        return reptiles.count
      default:
        return 0
      }
    }

  
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let animal = animals[indexPath.row]
      if let cell = tableView.dequeueReusableCell(withIdentifier: "animalInfoCell", for: indexPath) as? AnimalListTableViewCell {
        cell.animalName.text = animal.name
          cell.animalOrigin.text = animal.origin
          cell.animalImage.image = UIImage(named: String(animal.imageNumber))
       
        return cell
      }
        return UITableViewCell()
    }
  
  
  override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    switch section{
    case 0:
      return "Amphibians"
    case 1:
      return "Birds"
    case 2:
      return "Insects"
    case 3:
      return "Mammals"
    case 4:
      return "Reptiles"
    default:
      return ""
    }
  }
  
  
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 90
  }
  
  
  
  
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
  }
  
  
//  if let viewController = storyBoard.instantiateViewController(withIdentifier: XXXXX) as? XXXX
  

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
