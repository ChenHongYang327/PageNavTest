

import UIKit

class NoPresentVC: UIViewController {
    
    var value: String?

    @IBOutlet weak var tvResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let value = value {
            tvResult.text = value
        }

    }
    

}
