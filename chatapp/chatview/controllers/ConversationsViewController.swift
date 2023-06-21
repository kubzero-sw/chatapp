import UIKit
import Firebase

class ConversationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var mytable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mytable.register(UITableViewCell.self, forCellReuseIdentifier: "cel")
        // Настройка делегата и источника данных для таблицы
        mytable.delegate = self
        mytable.dataSource = self
     
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = tableView.dequeueReusableCell(withIdentifier: "cel", for: indexPath)
        cel.textLabel?.text = "Molya Anelya"
        cel.accessoryType = .disclosureIndicator
        return cel
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let vc = ChatViewController()
        vc.title = "Chat"
        navigationController?.pushViewController(vc, animated: true)
    }
}
   
