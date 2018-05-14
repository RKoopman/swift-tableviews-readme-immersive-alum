//
//  TableViewController.swift
//  TableViewFunTime
//
//  Created by James Campagno on 6/15/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var favoriteSongs: [String] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        generateFavoriteSongs()
        
    }
    
    func generateFavoriteSongs() {

        favoriteSongs = [
            "Thriller",
            "Never Gonna Give You Up",
            "Safety Dance",
            "Space Oddity",
            "Smells Like Teen Spirit",
            "Jealous Guy",
            "Jolene",
            "Moondance",
            "Stairway To Heaven",
            "One",
            "Life On Mars?"
        ]
        
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    } // repeats the rows within a section

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return favoriteSongs.count
        
    } // Creates a new row for every item within the favoriteSongs array.

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath) // dequeueReusableCell(withIdentifier:for:) loads a sections in parts to save memory. ex: 0-4 -> 5-9 -> 10-14, as the user scrolls through the table.

        let favoriteSong = favoriteSongs[(indexPath as NSIndexPath).row] // set each cell equal to favoriteSong const.
        
        cell.textLabel?.text = favoriteSong // if new cell is available, populate it. If new cell is not available, create new one (then populate it)
        print("Section: \(indexPath.section) -- Row: \(indexPath.row)")
        return cell
    }
 

}
