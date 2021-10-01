

import UIKit

class MainVC: UIViewController {
    
    var value = "Hello!"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // 有拉 segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 判斷segue ID
        if segue.identifier == "segueToShowVC" {
            // 設定目標頁類別物件
            if let destination = segue.destination as? ShowVC {
                // 把值帶過去目標頁
                destination.value = value
            }
        }
        
        // 判斷segue ID
        if segue.identifier == "segueToPresentVC" {
            if let destination = segue.destination as? PresentVC {
                destination.value = value
            }
        }
        
    }
    
    
    
    
    
    // 沒拉線，show
    @IBAction func clickNoShow(_ sender: Any) {
        // 看目標頁面在哪一個 storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        // 跳頁目標的物件，要記得轉型
        let noShowVC = storyboard.instantiateViewController(identifier: "NoShowVC") as! NoShowVC
        // 帶值的設定
        noShowVC.value = value
        // 跳轉 Show 的程式
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

