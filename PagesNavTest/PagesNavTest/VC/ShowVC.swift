

import UIKit

class ShowVC: UIViewController {
    
    // 宣告一個“String” 的容器，前一頁就會透過此把東西傳過來
    // 容器型別不限String，Int Float Bool 自訂類別，都可以。
    var value: String?

    @IBOutlet weak var tvResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let value = value {
            // 把值顯示出來
            tvResult.text = value
        }
        
    }
    
}
