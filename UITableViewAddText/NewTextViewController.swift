//
//  NewTextViewController.swift
//  UITableViewAddText
//
//  Created by Андрей Сапожников on 09.04.2022.
//

import UIKit

class NewTextViewController: UIViewController {
    
    var inputText = Text(text:"")

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateSaveButtonState()

    }
    private func updateSaveButtonState() {
        let inputText = inputTextField.text ?? ""
        saveButton.isEnabled = !inputText.isEmpty
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        let inputText = inputTextField.text ?? ""
        
        self.inputText = Text(text: inputText)
    }

}
