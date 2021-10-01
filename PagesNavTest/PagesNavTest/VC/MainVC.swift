

import UIKit

class MainVC: UIViewController {
    
    var value = "Hello!"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueToShowVC" {
            if let destination = segue.destination as? ShowVC {
                destination.value = value
            }
        }
        
        if segue.identifier == "segueToPresentVC" {
            if let destination = segue.destination as? PresentVC {
                destination.value = value
            }
        }
        
    }
    
    
    
    
    
    // 沒拉線，show
    @IBAction func clickNoShow(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let noShowVC = storyboard.instantiateViewController(identifier: "NoShowVC") as! NoShowVC
        noShowVC.value = value
        self.navigationController?.pushViewController(noShowVC, animated: true)
        
    }
    
    // 沒拉線，present
    @IBAction func clickNoPresent(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let noPresentVC = storyboard.instantiateViewController(identifier: "NoPresentVC") as! NoPresentVC
        noPresentVC.value = value
        self.present(noPresentVC, animated: true)
        
    }
    
}

