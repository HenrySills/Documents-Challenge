//
//  NewDocumentViewController.swift
//  Documents
//
//  Created by Henry Sills on 8/29/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import UIKit

class NewDocumentViewController: UIViewController{
    

    @IBOutlet weak var nameLabel: UILabel?
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var textBox: UITextField!
    
  //  @IBOutlet weak var documentsTableView: UITableView
    
//    var docs = Docs?
 //   var documents: [Docs] = []
    
    var fileManger: FileManager?
    var documentDirect: NSString?
    var filePath: NSString?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameField.delegate = self as? UITextFieldDelegate
        
        fileManger = FileManager.default
        let directPath:NSArray = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true) as NSArray
        documentDirect = directPath[0] as? NSString
        print("Path: \(String(describing: documentDirect))")

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func cancelButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
       
        filePath = documentDirect?.appendingPathComponent("file1.txt") as NSString?
        fileManger?.createFile(atPath: filePath! as String, contents: nil, attributes: nil)
        dismiss(animated: true, completion: nil)
        
        
        
        let savePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        print(savePath)
        let documentDirectoryPath = savePath + "/Create Folder"
                
        var objectBool:ObjCBool = true
                
        let isExit = FileManager.default.fileExists(atPath: documentDirectoryPath, isDirectory: &objectBool)
                
        if isExit == false {
            do {
                try FileManager.default.createDirectory(atPath: documentDirectoryPath, withIntermediateDirectories: true, attributes: nil)
            }catch{
                print("Error")
            }
        }
          
    }

    
    /*
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return documents.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     //       let cell = DocumentsTableView.dequeueReusableCell(withIdentifier: "docCell", for: indexPath)
            
            let document = documents[indexPath.row]
            cell.textLabel?.text = document.title
            
            return cell
        }
    }
    
   */

}
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



    /*
extension NewDocumentViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
*/
    

