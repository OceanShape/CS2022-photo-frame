import UIKit

class SecondTabViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let imageIndex: Int = Int.random(in: 1...22)
        var imageIndexString: String = String(imageIndex)
        
        print("image index: \(imageIndex)")
        
        if imageIndex < 10 {
            imageIndexString = "0" + imageIndexString
        }
        imageIndexString += ".jpg"

        self.photoImageView.image = UIImage(named: imageIndexString)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear\t\tSecond View Controller")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear\t\tSecond View Controller")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear\tSecond View Controller")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear\tSecond View Controller")
    }
    
}
