//
//  ViewController.swift
//  nanoChallenge3
//
//  Created by M.Diaz Darmawan on 20/05/19.
//  Copyright © 2019 M.Diaz Darmawan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var cloud1: UIImageView!
    @IBOutlet weak var cloud2: UIImageView!
    @IBOutlet weak var lilCloud: UIImageView!
    @IBOutlet weak var lilCloud1: UIImageView!
    @IBOutlet weak var lilCloud2: UIImageView!
    @IBOutlet weak var lilCloud3: UIImageView!
    @IBOutlet weak var noiseYellow: UIImageView!
    @IBOutlet weak var cloudPopUp: UIImageView!
    @IBOutlet weak var character: UIImageView!
    @IBOutlet weak var cheese: UIImageView!
    @IBOutlet weak var cloudYellow: UIImageView!
    @IBOutlet weak var cloudYellow2: UIImageView!
    @IBOutlet weak var cloudYellow3: UIImageView!
    @IBOutlet weak var rainbow: UIImageView!
    @IBOutlet weak var bird: UIImageView!
    @IBOutlet weak var sayText: UIImageView!
    var player: AVAudioPlayer?
    var tapCounter = 0
    @IBOutlet weak var keepSmile: UIImageView!
    @IBOutlet weak var yellowCharacter: UIImageView!
    @IBOutlet weak var celebrate: UIImageView!
    @IBOutlet weak var celebrate2: UIImageView!
    @IBOutlet weak var purpleNoise: UIImageView!
    
    
    @IBOutlet weak var sun: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UIView.animateKeyframes(withDuration: 5.0, delay: 0, options: [.calculationModeCubic], animations: {
            // Add animations
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1.0/5.0, animations: {
                self.sun.layer.opacity = 1
            })
            UIView.addKeyframe(withRelativeStartTime: 1.0/5.0, relativeDuration: 1.0/5.0, animations: {
                self.sun.layer.opacity = 0.1

            })
            UIView.addKeyframe(withRelativeStartTime: 2.0/5.0, relativeDuration: 1.0/5.0, animations: {
                self.sun.layer.opacity = 1

            })
            UIView.addKeyframe(withRelativeStartTime: 3.0/5.0, relativeDuration: 1.0/5.0, animations: {
                self.sun.layer.opacity = 0.1

            })
            UIView.addKeyframe(withRelativeStartTime: 4.0/5.0, relativeDuration: 1.0/5.0, animations: {
                self.sun.layer.opacity = 1

            })
        }, completion:{ _ in
            print("I'm done!")
        })
    }
    
    @IBAction func sunButton(_ sender: Any) {
        
        
        if tapCounter == 0  {
            tapCounter = tapCounter+1
            UIView.animateKeyframes(withDuration: 5.0, delay: 0, options: [.calculationModeCubic], animations: {
                // Add animations
                
                UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1.0/5.0, animations: {
                    self.sun.frame = CGRect(x: 140, y: 700, width: 140, height: 141)
                })
                UIView.addKeyframe(withRelativeStartTime: 1.0/5.0, relativeDuration: 1.0/5.0, animations: {
                    self.sun.setImage(UIImage(named: "sunCapture"), for: .normal)
                })
                UIView.addKeyframe(withRelativeStartTime: 2.0/5.0, relativeDuration: 1.0/5.0, animations: {
                    self.sun.layer.opacity = 1
                    
                })
                UIView.addKeyframe(withRelativeStartTime: 3.0/5.0, relativeDuration: 1.0/5.0, animations: {
                    self.sun.layer.opacity = 0.1
                    
                })
                UIView.addKeyframe(withRelativeStartTime: 4.0/5.0, relativeDuration: 1.0/5.0, animations: {
                    self.sun.layer.opacity = 1
                    
                })
            }, completion:{ _ in
                print("I'm done!")
            })
        }else {
            tapCounter = tapCounter+1
            UIView.animateKeyframes(withDuration: 4.0, delay: 0, options: [.calculationModeCubic], animations: {
                // Add animations
                
                
                
                UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5/4.0, animations: {
                    self.view.backgroundColor = #colorLiteral(red: 1, green: 0.8431372549, blue: 0.4117647059, alpha: 1)
                    
                })
                UIView.addKeyframe(withRelativeStartTime: 4.0/5.0, relativeDuration: 1.0/5.0, animations: {
                    self.sun.isHidden = true
                })
                UIView.addKeyframe(withRelativeStartTime: 0.5/4.0, relativeDuration: 0.5/4.0, animations: {
                    self.cloud1.isHidden = true
                    self.cloudYellow.image = UIImage(named: "cloudYellow")
                    
                })
                UIView.addKeyframe(withRelativeStartTime: 1.0/4.0, relativeDuration: 0.5/4.0, animations: {
                    self.cloud2.isHidden = true
                    self.cloudYellow3.image = UIImage(named: "cloudYellow")
                    
                })
                UIView.addKeyframe(withRelativeStartTime: 1.5/4.0, relativeDuration: 0.5/4.0, animations: {
                    self.lilCloud.isHidden = true
                    self.cloudYellow2.image = UIImage(named: "cloudYellow")
                })
                UIView.addKeyframe(withRelativeStartTime: 2.0/4.0, relativeDuration: 0.5/4.0, animations: {
                    self.lilCloud2.isHidden = true
                    self.cloudPopUp.image = UIImage(named: "whiteTought")
                })
                UIView.addKeyframe(withRelativeStartTime: 2.5/4.0, relativeDuration: 0.5/4.0, animations: {
                    self.bird.isHidden = true
                    self.cheese.image = UIImage(named: "cheese")
                })
                UIView.addKeyframe(withRelativeStartTime: 3.0/4.0, relativeDuration: 0.5/4.0, animations: {
                    self.rainbow.isHidden = true
                    self.character.image = UIImage(named: "character")
                })
                UIView.addKeyframe(withRelativeStartTime: 3.5/4.0, relativeDuration: 0.5/4.0, animations: {
                    self.noiseYellow.image = UIImage(named: "bg")
                })
                UIView.addKeyframe(withRelativeStartTime: 4.0/4.0, relativeDuration: 0.5/4.0, animations: {
                    self.sayText.image = UIImage(named: "Say")
                })
            }, completion:{ _ in
                
                UIView.animateKeyframes(withDuration: 7.0, delay: 0, options: [.calculationModeCubic], animations: {
                    // Add animations
                    UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1.0/7.0, animations: {
                        self.view.layer.opacity = 0.5
                        self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7882352941, blue: 0.2196078431, alpha: 1)
                    })
                    UIView.addKeyframe(withRelativeStartTime: 1.0/7.0, relativeDuration: 1.0/7.0, animations: {
                        self.view.layer.opacity = 1
                        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                        
                    })
                    UIView.addKeyframe(withRelativeStartTime: 2.0/7.0, relativeDuration: 1.0/7.0, animations: {
                        self.view.layer.opacity = 0.5
                        self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7882352941, blue: 0.2196078431, alpha: 1)
                    })
                    UIView.addKeyframe(withRelativeStartTime: 3.0/7.0, relativeDuration: 1.0/7.0, animations: {
                        self.view.layer.opacity = 1
                        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                    })
                    UIView.addKeyframe(withRelativeStartTime: 4.0/7.0, relativeDuration: 1.0/7.0, animations: {
                        self.view.layer.opacity = 0.5
                        self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7882352941, blue: 0.2196078431, alpha: 1)
                    })
                    UIView.addKeyframe(withRelativeStartTime: 5.0/7.0, relativeDuration: 1.0/7.0, animations: {
                        self.view.layer.opacity = 1
                        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                        
                    })
                    
                    UIView.addKeyframe(withRelativeStartTime: 6.0/7.0, relativeDuration: 1.0/7.0,animations: {
                        self.view.layer.opacity = 1
                        self.view.backgroundColor = #colorLiteral(red: 0.6941176471, green: 0.5058823529, blue: 0.6980392157, alpha: 1)
                        
                    })
                    
                }, completion:{ _ in
                    self.playSound()
                    print("I'm done!")
                    
                    UIView.animateKeyframes(withDuration: 5.0, delay: 0, options: [.calculationModeCubic], animations: {
                        // Add animations
                        UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1.0/5.0, animations: {
                            self.cloudYellow.isHidden = true
                            self.keepSmile.image = UIImage(named: "keepSmile")
                        })
                        UIView.addKeyframe(withRelativeStartTime: 1.0/5.0, relativeDuration: 1.0/5.0, animations: {
                            self.cloudYellow3.isHidden = true
                            self.yellowCharacter.image = UIImage(named: "yellowCharacter")
                        })
                        UIView.addKeyframe(withRelativeStartTime: 2.0/5.0, relativeDuration: 1.0/5.0, animations: {
                            self.cloudYellow2.isHidden = true
                            self.celebrate.image = UIImage(named: "celebrate")
                        })
                        UIView.addKeyframe(withRelativeStartTime: 3.0/5.0, relativeDuration: 1.0/5.0, animations: {
                            self.lilCloud2.isHidden = true
                            self.celebrate2.image = UIImage(named: "celebrateLeft")
                        })
                        UIView.addKeyframe(withRelativeStartTime: 4.0/5.0, relativeDuration: 1.0/5.0, animations: {
                            self.bird.isHidden = true
                        })
                        UIView.addKeyframe(withRelativeStartTime: 4.0/5.0, relativeDuration: 1.0/5.0, animations: {
                            self.cloudPopUp.isHidden = true
                        })
                        UIView.addKeyframe(withRelativeStartTime: 4.0/5.0, relativeDuration: 1.0/5.0, animations: {
                            self.sayText.isHidden = true
                        })
                        UIView.addKeyframe(withRelativeStartTime: 4.0/5.0, relativeDuration: 1.0/5.0, animations: {
                            self.character.isHidden = true
                        })
                        UIView.addKeyframe(withRelativeStartTime: 4.0/5.0, relativeDuration: 1.0/5.0, animations: {
                            self.cheese.isHidden = true
                        })
                        UIView.addKeyframe(withRelativeStartTime: 4.0/5.0, relativeDuration: 1.0/5.0, animations: {
                            self.rainbow.isHidden = true
                        })
                            UIView.addKeyframe(withRelativeStartTime: 4.0/5.0, relativeDuration: 1.0/5.0, animations: {
                                self.noiseYellow.isHidden = true
                                self.purpleNoise.image = UIImage(named: "bgPurple")
                        })
                        
                    }, completion:{ _ in
                        print("I'm done!")
                    })
                })
                
                
                
                
                
            })
        }
        
        
//        UIView.animateKeyframes(withDuration: 5.0, delay: 0, options: [.calculationModeCubic], animations: {
//            // Add animations
//            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1.0/5.0, animations: {
//                self.sun.frame = CGRect(x: 140, y: 700, width: 140, height: 141)
//            })
//            UIView.addKeyframe(withRelativeStartTime: 1.0/5.0, relativeDuration: 1.0/5.0, animations: {
//                self.sun.setImage(UIImage(named: "sunCapture"), for: .normal)
//            })
//            UIView.addKeyframe(withRelativeStartTime: 2.0/5.0, relativeDuration: 1.0/5.0, animations: {
//                self.sun.layer.opacity = 1
//
//            })
//            UIView.addKeyframe(withRelativeStartTime: 3.0/5.0, relativeDuration: 1.0/5.0, animations: {
//                self.sun.layer.opacity = 0.1
//
//            })
//            UIView.addKeyframe(withRelativeStartTime: 4.0/5.0, relativeDuration: 1.0/5.0, animations: {
//                self.sun.layer.opacity = 1
//
//            })
//        }, completion:{ _ in
//            print("I'm done!")
//        })
        
    }
    
    func playSound() {
        print("Suara Dimainkan")
        guard let url = Bundle.main.url(forResource: "cameraSfx", withExtension: "mp3") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
