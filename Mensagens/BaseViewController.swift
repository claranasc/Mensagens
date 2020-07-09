//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Clara Nascimento on 29/06/20.
//  Copyright © 2020 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeColor (_sender: UIButton) {
        if let reference = self as? ColorPickerDelegate {
            let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            colorPicker.modalPresentationStyle = .overCurrentContext
            colorPicker.delagate = reference
            present(colorPicker, animated: true, completion: nil)
        }
    }
}
