//
//  ViewController.swift
//  Protokolle und Delegation
//
//  Created by Michael Hornung on 22.11.22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Suesswasserfische")!)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func fischButton(){
        performSegue(withIdentifier: "startToFisch", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let fischeViewController = segue.destination as! _FischViewController
        fischeViewController.fische = self
    }
}
extension ViewController: _FischSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        imageView.image = image
        label.text = name
        view.backgroundColor = color
    }
}
