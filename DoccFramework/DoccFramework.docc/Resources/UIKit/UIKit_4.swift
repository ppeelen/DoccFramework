import UIKit
import DoccFramework

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sayHi(_ sender: Any) {
        let dc = DummyClass()
    }
}
