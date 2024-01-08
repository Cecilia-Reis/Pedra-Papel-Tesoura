//
//  ViewController.swift
//  Pedra-Papel-Tesoura
//
//  Created by Cecilia Reis on 19/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cpuLabel: UILabel!
    @IBOutlet weak var cpuImage: UIImageView!
    @IBOutlet weak var jogadorImage: UIImageView!
    @IBOutlet weak var jogadorLabel: UILabel!
    @IBOutlet weak var empateLabel: UILabel!
    
    @IBAction func comecaButtom(_ sender: Any) {
        
        let cpuNumber = Int.random(in: 1...3)
        let jogadorNumber = Int.random(in: 1...3)
        
        setHandleImage(imageView: cpuImage, imageNumber: cpuNumber)
        setHandleImage(imageView: jogadorImage, imageNumber: jogadorNumber)
        
        if cpuNumber == 1 && jogadorNumber == 1 {
            mostrarEmpate()
        } else {
            empateLabel.isHidden = true
        }
        if cpuNumber == 2 && jogadorNumber == 2 {
            mostrarEmpate()
        }
        if cpuNumber == 3 && jogadorNumber == 3 {
            mostrarEmpate()
        }
        
        handleGameResult(cpuNumber, jogadorNumber)
            
        cpuLabel.text = "Computador: \(cpuScore)"
        jogadorLabel.text = "Jogador: \(jogadorScore)"
                
    }
    var cpuScore = 0
    var jogadorScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func setHandleImage(imageView: UIImageView, imageNumber: Int) {
        switch imageNumber {
        case 1:
            imageView.image = UIImage(named: "papel")
        case 2:
            imageView.image = UIImage(named: "pedra")
        case 3:
            imageView.image = UIImage(named: "tesoura")
        default:
            print("Error")
        }
    }
    func mostrarEmpate() {
        empateLabel.text = "Empate!"
        empateLabel.isHidden = false
    }
    func handleGameResult(_ cpuNumber: Int, _ jogadorNumber: Int) {
        if cpuNumber == 1 && jogadorNumber == 2 {
            jogadorScore = jogadorScore + 1
        } else if cpuNumber == 1 && jogadorNumber == 3 {
            cpuScore = cpuScore + 1
        } else if cpuNumber == 2 && jogadorNumber == 1 {
            cpuScore = cpuScore + 1
        } else if cpuNumber == 3 && jogadorNumber == 3 {
            jogadorScore = jogadorScore + 1
        } else if cpuNumber == 3 && jogadorNumber == 1 {
            jogadorScore = jogadorScore + 1
        } else if cpuNumber == 3 && jogadorNumber == 2 {
            cpuScore = cpuScore + 1
        }
    }

}

