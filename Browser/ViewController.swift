

import UIKit
import SafariServices

class ViewController: UIViewController {

  @IBAction func loadObjc(_ sender: Any) {
    performSegue(withIdentifier: "WebSegue", sender: URL(string: "https://www.objc.io")!)
  }

  @IBAction func loadMokacoding(_ sender: Any) {
    performSegue(withIdentifier: "WebSegue", sender: URL(string: "http://www.mokacoding.com")!)
  }

  @IBAction func loadPBSVideo(_ sender: Any) {
    performSegue(withIdentifier: "WebSegue", sender: URL(string: "http://www.pbs.org/video/2365356586/")!)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "WebSegue" {
      let webController = segue.destination as! WebViewController
      if let url = sender as? URL {
        webController.url = url
      }
    }
  }
}


