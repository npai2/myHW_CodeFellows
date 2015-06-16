//
//  ViewController.swift
//  rosterApp234
//
//  Created by Nitin Pai on 6/14/15.
//  Copyright (c) 2015 Nitin Pai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var myArray = [Person]()


    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        let nick = Person(first: "Nick", last: "Von Pentz")
        myArray.append(nick)
        let nitin = Person(first: "Nitin", last: "Pai")
        myArray.append(nitin)
        let kevin = Person(first: "Kevin", last: "Lam")
        myArray.append(kevin)
        let molly = Person(first: "Molly", last: "Kent")
        myArray.append(molly)
        let matthew = Person(first: "Matthew", last: "Loh")
        myArray.append(matthew)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myArray.count
    
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        let personToDisplay = self.myArray[indexPath.row]
        cell.textLabel?.text = personToDisplay.firstName + " " + personToDisplay.lastName
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowDetailViewController" {
            
            let detailViewController = segue.destinationViewController as! DetailViewController
            
            let indexPath = self.tableView.indexPathForSelectedRow()
            let selectedRow = indexPath!.row
            let selectedPerson = self.myArray[selectedRow]
            println(selectedPerson.firstName)
            println(selectedPerson.lastName)
            detailViewController.selectedPerson = selectedPerson
            
        }
    }

    
}

