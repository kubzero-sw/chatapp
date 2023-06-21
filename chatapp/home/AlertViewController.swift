//
//  AlertViewController.swift
//  chatapp
//
//  Created by Rashid Karina on 03.05.2023.
//

import UIKit
import AVFoundation
class AlertViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var sosButton: UIButton!
    var isSOSButtonTapped = false
    var audioPlayer: AVAudioPlayer?
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
                myLabel.layer.borderColor = UIColor.systemGray4.cgColor
                myLabel.layer.borderWidth = 1.0
    
                myLabel.layer.cornerRadius = 15.0
                myLabel.layer.shadowColor = UIColor.systemGray5.cgColor
               myLabel.layer.shadowOffset = CGSize(width: 0, height: 2)
               myLabel.layer.shadowOpacity = 0.5
               myLabel.layer.shadowRadius = 4.0
        sosButton.addTarget(self, action: #selector(sosButtonTapped), for: .touchUpInside)
        guard let audioPath = Bundle.main.path(forResource: "your-music-file", ofType: "mp3") else {
                   return
               }
               let audioURL = URL(fileURLWithPath: audioPath)
               do {
                   audioPlayer = try AVAudioPlayer(contentsOf: audioURL)
                   audioPlayer?.prepareToPlay()
                   audioPlayer?.numberOfLoops = -1 // Бесконечное повторение музыки
               } catch {
                   print("Ошибка при инициализации AVAudioPlayer: \(error.localizedDescription)")
               }
    }
    
    @objc func sosButtonTapped() {
        if !isSOSButtonTapped {
          
           let alert = UIAlertController(title: nil, message: "We have notified your contacts.\nDo you need an emergency service?", preferredStyle: .alert)
           let yesAction = UIAlertAction(title: "Yes", style: .default) { [weak self] _ in
               self?.sosButton.setTitle("| |", for: .normal)
               self?.isSOSButtonTapped = true
               self?.playMusic()
               self?.titleLabel.text = "We sent your location to the emergency services, stay in a safe place for you, they will arrive within 5 minutes."
               self?.titleLabel.layer.borderColor = UIColor.systemGray4.cgColor
                      self?.titleLabel.layer.borderWidth = 3.0
           }
           let noAction = UIAlertAction(title: "No", style: .default) { [weak self] _ in
               self?.sosButton.setTitle("| |", for: .normal)
               self?.isSOSButtonTapped = true
               self?.playMusic()
               self?.titleLabel.text = ""
           }
           alert.addAction(yesAction)
           alert.addAction(noAction)
           present(alert, animated: true, completion: nil)
        } else {
           sosButton.setTitle("SOS", for: .normal)
           isSOSButtonTapped = false
           stopMusic()
           titleLabel.text = ""
            titleLabel.layer.borderWidth = 0.0
                titleLabel.layer.borderColor = nil
        }
       }
       
       func playMusic() {
           audioPlayer?.play()
       }
       
       func stopMusic() {
           audioPlayer?.stop()
           audioPlayer?.currentTime = 0
       }
   }
