import UIKit

class LemonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: false)
    }
    
}
