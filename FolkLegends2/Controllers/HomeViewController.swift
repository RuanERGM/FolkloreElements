import UIKit

class HomeViewController: UITableViewController {
    
    @IBOutlet var tableNumbers: UITableView!
    
    @IBOutlet weak var currentKey: UIImageView!
    
    var selectedCell : Story = Story()
    var portas: Int = 0
    
    func getKey() -> String {
        let defaults = UserDefaults.standard
        portas = defaults.integer(forKey: "Porta")
        
        switch (portas){
        case 0:
            return "chave.terra"
        case 1:
            return "chave.agua"
        case 2:
            return "chave.ar"
        case 3:
            return "chave.fogo"
        default:
            return "chave.fogo"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentKey.image = UIImage(named: getKey())
        
        self.tableNumbers.separatorStyle = UITableViewCell.SeparatorStyle.none
        tableNumbers.backgroundView = UIImageView(image: UIImage(named: "background 1"))
        tableNumbers.backgroundView?.contentMode = .scaleAspectFill
        tableNumbers.dataSource = self
        tableNumbers.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let control = defaults.bool(forKey: "History")
        
        if(control == false){
            performSegue(withIdentifier: "Hist", sender: self)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MockupStoryService.allStories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! tableCell
        
        DispatchQueue.main.async
        {
            cell.backView.layer.cornerRadius = 10.0;
            cell.frontView.roundCorners([.topRight, .bottomRight, .topLeft, .bottomLeft], radius: 10)
            
            let defaults = UserDefaults.standard
            self.portas = defaults.integer(forKey: "Porta")
            
            if self.portas >= MockupStoryService.allStories[indexPath.item].idDoor  {
                cell.CellViewImage.image = MockupStoryService.allStories[indexPath.item].imgInitialDoor
            } else {
                cell.CellViewImage.image = MockupStoryService.allStories[indexPath.item].imgInitialDoorLocked
            }
            
            cell.CellViewImage.layer.cornerRadius = 10.0;
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCell = MockupStoryService.allStories[indexPath.item]
        
        let defaults = UserDefaults.standard
        portas = defaults.integer(forKey: "Porta")
        
        if portas >= selectedCell.idDoor {
            performSegue(withIdentifier: "showdetail", sender: self)
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? GameViewController {
            destination.selectedDoor = selectedCell
        }
    }
}

class tableCell : UITableViewCell
{
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var frontView: UIView!
    @IBOutlet weak var CellViewImage: UIImageView!
}
