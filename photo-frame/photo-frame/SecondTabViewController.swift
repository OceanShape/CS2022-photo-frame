import UIKit

class SecondTabViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    @IBAction func pickImage() {
        self.present(self.imagePicker, animated: true)
    }

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

    @IBAction func selectButtonTouched(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagePicker.sourceType = .photoLibrary
        self.imagePicker.delegate = self
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

extension SecondTabViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image: UIImage? = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        self.photoImageView.image = image
        picker.dismiss(animated: true)
    }
}
