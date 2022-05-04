import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!

    @IBOutlet weak var secondLabel: UILabel!
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstLabel.text = "사진액자"
        self.firstLabel.textAlignment = .center
        self.secondLabel.text = "액자 설명"
        self.secondLabel.textAlignment = .center
    }

}
