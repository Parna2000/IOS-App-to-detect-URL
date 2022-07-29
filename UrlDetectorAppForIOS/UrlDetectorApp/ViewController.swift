//
//  ViewController.swift
//  UrlDetectorApp
//
//  Created by Parna Goswami on 18/07/22.
//

import UIKit
import PythonKit
//(CIFilter<CIBloom> *)bloomFilter;

let bf = Python.import("bloom-filter")
let pkl = Python.import("pickle")
let filename = pkl.load()
let rd = open("/Users/parnagoswami/Desktop/OSINT filters/Bloom filter org/Bloom filter/Untitled Folder/url_checker.pkl", 'r')

class ViewController: UIViewController {

    @IBOutlet weak var txtResult: UITextView!
    @IBOutlet weak var txtUrl: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func detectUrl(_ sender: UIButton) {
        if isValidInput(){
            print("success")
        }else{
            print("validation failed")
        }
    }
    
    //MARK--
    private func isValidInput()->Bool{
        var flagValidateInput = false
        
        if !txtUrl.text!.isEmpty{
            flagValidateInput = true
        }
        return flagValidateInput
    }
    
}

