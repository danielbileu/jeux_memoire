//==========================
import UIKit
//==========================
class ViewController: UIViewController {
    //-------------------
    @IBOutlet weak var back_1: UIView!
    @IBOutlet weak var front_1: UIView!
    @IBOutlet weak var back_2: UIView!
    @IBOutlet weak var front_2: UIView!
    @IBOutlet weak var back_3: UIView!
    @IBOutlet weak var front_3: UIView!
    @IBOutlet weak var back_4: UIView!
    @IBOutlet weak var front_4: UIView!
    @IBOutlet weak var back_5: UIView!
    @IBOutlet weak var front_5: UIView!
    @IBOutlet weak var back_6: UIView!
    @IBOutlet weak var front_6: UIView!
    @IBOutlet weak var back_7: UIView!
    @IBOutlet weak var front_7: UIView!
    @IBOutlet weak var back_8: UIView!
    @IBOutlet weak var front_8: UIView!
    @IBOutlet weak var back_9: UIView!
    @IBOutlet weak var front_9: UIView!
    @IBOutlet weak var back_10: UIView!
    @IBOutlet weak var front_10: UIView!
    @IBOutlet weak var back_11: UIView!
    @IBOutlet weak var front_11: UIView!
    @IBOutlet weak var back_12: UIView!
    @IBOutlet weak var front_12: UIView!
    
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    @IBOutlet weak var imgView4: UIImageView!
    @IBOutlet weak var imgView5: UIImageView!
    @IBOutlet weak var imgView6: UIImageView!
    @IBOutlet weak var imgView7: UIImageView!
    @IBOutlet weak var imgView8: UIImageView!
    @IBOutlet weak var imgView9: UIImageView!
    @IBOutlet weak var imgView10: UIImageView!
    @IBOutlet weak var imgView11: UIImageView!
    @IBOutlet weak var imgView12: UIImageView!
    
    @IBOutlet weak var card_1: UIView!
    @IBOutlet weak var card_2: UIView!
    @IBOutlet weak var card_3: UIView!
    @IBOutlet weak var card_4: UIView!
    @IBOutlet weak var card_5: UIView!
    @IBOutlet weak var card_6: UIView!
    @IBOutlet weak var card_7: UIView!
    @IBOutlet weak var card_8: UIView!
    @IBOutlet weak var card_9: UIView!
    @IBOutlet weak var card_10: UIView!
    @IBOutlet weak var card_11: UIView!
    @IBOutlet weak var card_12: UIView!
    
    //---------La View du bouton pour recommencer----------
    @IBOutlet weak var viewReset: UIView!

    
    
//=========Les arrays=====
    

    var arrayOfImageViews: [UIImageView]!
    
    //---------Define l'ordre du index du 0 à 11----------
    var arrayOfAnimalNames = [String]()
    var arrayOfRandomAnimalNames = [String]()
    var arrayChosenCards = [String]()
    var arrayOfCards = [UIView]()
    var arrayOfShowingBacks = [UIView]()
    var arrayOfHidingFronts = [UIView]()
    var cards: [UIView]!
    var jouezDeNouveau = 0
    
    //--------Lorsque le document est prêt...arrange les images dans le Array au hasard-----------
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfImageViews = [imgView1, imgView2, imgView3, imgView4,imgView5, imgView6, imgView7, imgView8, imgView9, imgView10, imgView11, imgView12]
        arrayOfAnimalNames = ["cerf.png", "eccureil.png", "hibou.png", "ours.png", "raton laveur.png", "renard.png", "cerf.png", "eccureil.png", "hibou.png", "ours.png", "raton laveur.png", "renard.png"]
        randomAnimals()
        setImagesToCards()
        jouezDeNouveau = 0
        viewReset.isHidden = true
    }
//=========Les fonctions=====
    
    
    //---------Le boton d'action. Si pressioné, il tourne.----------
    @IBAction func showCard(_ sender: UIButton) {
        if arrayOfHidingFronts.count == 2 {
            return
        }
        switch sender.tag {
        case 0:
            flipCard(from: front_1, to: back_1)
            arrayOfCards.append(card_1)
            arrayOfShowingBacks.append(back_1)
            arrayOfHidingFronts.append(front_1)
        case 1:
            flipCard(from: front_2, to: back_2)
            arrayOfCards.append(card_2)
            arrayOfShowingBacks.append(back_2)
            arrayOfHidingFronts.append(front_2)
        case 2:
            flipCard(from: front_3, to: back_3)
            arrayOfCards.append(card_3)
            arrayOfShowingBacks.append(back_3)
            arrayOfHidingFronts.append(front_3)
        case 3:
            flipCard(from: front_4, to: back_4)
            arrayOfCards.append(card_4)
            arrayOfShowingBacks.append(back_4)
            arrayOfHidingFronts.append(front_4)
        case 4:
            flipCard(from: front_5, to: back_5)
            arrayOfCards.append(card_5)
            arrayOfShowingBacks.append(back_5)
            arrayOfHidingFronts.append(front_5)
        case 5:
            flipCard(from: front_6, to: back_6)
            arrayOfCards.append(card_6)
            arrayOfShowingBacks.append(back_6)
            arrayOfHidingFronts.append(front_6)
        case 6:
            flipCard(from: front_7, to: back_7)
            arrayOfCards.append(card_7)
            arrayOfShowingBacks.append(back_7)
            arrayOfHidingFronts.append(front_7)
        case 7:
            flipCard(from: front_8, to: back_8)
            arrayOfCards.append(card_8)
            arrayOfShowingBacks.append(back_8)
            arrayOfHidingFronts.append(front_8)
        case 8:
            flipCard(from: front_9, to: back_9)
            arrayOfCards.append(card_9)
            arrayOfShowingBacks.append(back_9)
            arrayOfHidingFronts.append(front_9)
        case 9:
            flipCard(from: front_10, to: back_10)
            arrayOfCards.append(card_10)
            arrayOfShowingBacks.append(back_10)
            arrayOfHidingFronts.append(front_10)
        case 10:
            flipCard(from: front_11, to: back_11)
            arrayOfCards.append(card_11)
            arrayOfShowingBacks.append(back_11)
            arrayOfHidingFronts.append(front_11)
        case 11:
            flipCard(from: front_12, to: back_12)
            arrayOfCards.append(card_12)
            arrayOfShowingBacks.append(back_12)
            arrayOfHidingFronts.append(front_12)
        default:
            break
        }
        arrayChosenCards.append(arrayOfRandomAnimalNames[sender.tag])
        verification()
        apparaitreResetBouton()
    }
    
    //----------Ici je crée la Fonction que vais montré le bouton de reset aprés les 6 paires sont trouvés
    func apparaitreResetBouton() {
        if jouezDeNouveau == 6 {
            viewReset.isHidden = false
        }
    }
    
    //---------Tourner les cartes----------
    func flipCard(from: UIView, to: UIView) {
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: from, duration: 1.0, options: transitionOptions, animations: {
            from.isHidden = true
        })
        
        UIView.transition(with: to, duration: 1.0, options: transitionOptions, animations: {
            to.isHidden = false
        })
    }
    //----------Mettre les images de chaque carte dans chaque imageView---------
    func setImagesToCards() {
        var number = 0
        for imgView in arrayOfImageViews {
            imgView.image = UIImage(named: arrayOfRandomAnimalNames[number])
            number = number + 1
        }
    }
    
    //----------Faire au hasard---------
    func randomAnimals() {
        let numberOfAnimals = arrayOfAnimalNames.count
        for _ in 1...numberOfAnimals {
            let randomNumber = Int(arc4random_uniform(UInt32(arrayOfAnimalNames.count)))
            arrayOfRandomAnimalNames.append(arrayOfAnimalNames[randomNumber])
            arrayOfAnimalNames.remove(at: randomNumber)
        }
    }
    
    //----------Pour coucher les cartes que ne sont pas egaux---------
    func resetCards() {
        if arrayOfShowingBacks.count == 2 {
            Timer.scheduledTimer(timeInterval: 2,
                                 target: self,
                                 selector: (#selector(reFlip)),
                                 userInfo: nil,
                                 repeats: false)
        }
    }
    
    //---------Pour verifier si les cartes sont egaux----------
    func verification() {
        if arrayChosenCards.count == 2 {
            if arrayChosenCards[0] == arrayChosenCards[1] {
                Timer.scheduledTimer(timeInterval: 2,
                                     target: self,
                                     selector: (#selector(hideCards)),
                                     userInfo: nil,
                                     repeats: false)
                jouezDeNouveau = jouezDeNouveau + 1
            
            } else {
                arrayOfCards = []
            }
            arrayChosenCards = []
        }
        resetCards()
    }
    
    //--------Pour coucher les cartes si ils sont egaux-----------
    @objc func hideCards() {
        arrayOfCards[0].isHidden = true
        arrayOfCards[1].isHidden = true
        arrayOfCards = []
    }
    
    //---------Tourne les cartes que ne sont pareils---------
    func reFlip() {
        for index in 0..<arrayOfShowingBacks.count {
            flipCard(from: arrayOfShowingBacks[index], to: arrayOfHidingFronts[index])
        }
        arrayOfShowingBacks = []
        arrayOfHidingFronts = []
    }
    
    //---------Ici on vais mettre les images en chaque imgView au hasard en pressionent le bouton Reset. Aussi, cache le bouton Reset dans le ligne "viewReset.isHidden = true" ----------
   @IBAction func monResetBouton(_ sender: UIButton) {
        card_1.isHidden = false
        card_2.isHidden = false
        card_3.isHidden = false
        card_4.isHidden = false
        card_5.isHidden = false
        card_6.isHidden = false
        card_7.isHidden = false
        card_8.isHidden = false
        card_9.isHidden = false
        card_10.isHidden = false
        card_11.isHidden = false
        card_12.isHidden = false
        arrayOfImageViews = [imgView1, imgView2, imgView3, imgView4,imgView5, imgView6, imgView7, imgView8, imgView9, imgView10, imgView11, imgView12]
        arrayOfAnimalNames = ["cerf.png", "eccureil.png", "hibou.png", "ours.png", "raton laveur.png", "renard.png", "cerf.png", "eccureil.png", "hibou.png", "ours.png", "raton laveur.png", "renard.png"]
        arrayOfRandomAnimalNames = []
        randomAnimals()
        setImagesToCards()
        jouezDeNouveau = 0
        viewReset.isHidden = true
    }
}
