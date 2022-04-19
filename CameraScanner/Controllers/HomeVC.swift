//
//  HomeVC.swift
//  BarCodeReader
//
//  Created by Yasser Al-ShaFei on 17/04/2022.
//

import UIKit



class HomeVC: UIViewController {
    
    @IBOutlet weak var lblResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showVC" , let vc = segue.destination as? ScannerBarCodeVC {
            vc.toPassData = { data in
                self.lblResult.text = data ?? "Default"
                self.lblResult.textColor = .red
                print("The data-Value is \(data!)")
            }
            
        }else if segue.identifier == "showVC" , let vc = segue.destination as? ScannerQRCodeVC {
            vc.toPassData = { data in
                self.lblResult.text = data ?? "Default"
                self.lblResult.textColor = .red
                self.lblResult.font = UIFont(name:"ArialRoundedMTBold", size: 16.0)
                print("The data-Value is \(data!)")
            }
        }
    }
}
