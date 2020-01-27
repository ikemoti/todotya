//
//  NextViewController.swift
//  todotya
//
//  Created by USER on 2020/01/27.
//  Copyright © 2020 USER. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var TodoText: UITextField!
    
    
    @IBAction func tapButton(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context:context)
        task.name = TodoText.text
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
