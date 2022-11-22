//
//  FischViewController.swift
//  Protokolle und Delegation
//
//  Created by Michael Hornung on 22.11.22.
//

import UIKit

protocol _FischSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}
 
class _FischViewController: UIViewController {

    var fische: _FischSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "unterwasser")!)
    }
    
    @IBAction func karpfen(){
        fische.didTapChoice(image: UIImage(named: "karpfen")!, name: "Karpfen", color: UIColor.init(patternImage: UIImage(named:"kaprfenschwarm")!))
        dismiss(animated: true)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "kaprfenschwarm")!)
    }
    
    @IBAction func stoer(){
        fische.didTapChoice(image: UIImage(named: "zander")!, name: "Zander", color: UIColor.init(patternImage: UIImage(named:"zanderimwasser")!))
        dismiss(animated: true)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "zanderimwasser")!)
    }
    
    @IBAction func zander(){
        fische.didTapChoice(image: UIImage(named: "stoer")!, name: "Stör", color: UIColor.init(patternImage: UIImage(named:"stoeren")!))
        dismiss(animated: true)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "stoeren")!)
    }
}
