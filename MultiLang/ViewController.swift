//
//  ViewController.swift
//  MultiLang
//
//  Created by Akash Belekar on 26/06/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblFName:UILabel!
    @IBOutlet weak var lblLName:UILabel!
    @IBOutlet weak var seg:UISegmentedControl!



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnSegmentClick(sender:UISegmentedControl){
        if seg.selectedSegmentIndex == 0{//English
            print("seg",sender.selectedSegmentIndex)
            lblFName.text = "FirstNameKey".localizableString(loc: "en")
            lblLName.text = "LastNameKey".localizableString(loc: "en")
        }else if seg.selectedSegmentIndex == 1{//Spanish
            lblFName.text = "FirstNameKey".localizableString(loc: "es")
            lblLName.text = "LastNameKey".localizableString(loc: "es")
        }else{
            lblFName.text = "FirstNameKey".localizableString(loc: "mr")
            lblLName.text = "LastNameKey".localizableString(loc: "mr")

        }
        
    }

}

extension String{
    func localizableString(loc:String) -> String{
        let path = Bundle.main.path(forResource: loc, ofType: "lproj")
        let bundel = Bundle(path: path!)
        
        return NSLocalizedString(self,tableName: nil,bundle: bundel!, value: "", comment: "")
    }
}
