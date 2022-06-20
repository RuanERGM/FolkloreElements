import UIKit
import Foundation

class Description: UIViewController{
  

   
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var Descricao: UILabel!
    @IBOutlet weak var Name: UIImageView!
    
    @IBOutlet var Description: UIView!
    override func viewDidLoad() {
    super.viewDidLoad()
        
        if (CardControl == 0){
            Descricao.text = "Olá? Você deve tá se perguntando da onde vem essa voz…\n\nEu sou aquele nascido da terra, aquele que tem os olhos espalhados onde quer que pise… Meu nome é Guaraná!\n\nPara você saber mais sobre minha história tenho um jogo perfeito!!! O objetivo é eliminar primeiro todas as cartas do adversário. Se baseie nas relações elementais que você encontra no botão de ajuda."
            Name.image = UIImage(named: "Guarana.name")
            foto.image = UIImage(named: "Guarana")
        }
        
        if (CardControl == 1){
            Descricao.text = "Olá, alma perdida, eu sou aquele que foi traído e transformado em anta por aqueles que tinham inveja da minha beleza e sedução.\n\nBirá é meu nome! Fui o estopim para que algo importante acontecesse. Posso compartilhar essa história, se você tiver disposto a duelar comigo!"
            Name.image = UIImage(named: "SurgPei.name")
            foto.image = UIImage(named: "Bira")
        }
        if (CardControl == 2){
            Descricao.text = "Chegou a hora do caos e quem tiver na minha frente sofrerá!\n\nAs pessoas tremem enquanto tentam pronunciar meu nome. Eu sou aquele que vagueia nas profundezas dos seus sonhos. Se você tiver coragem, tente me vencer…"
            Name.image = UIImage(named: "tutu.name")
            foto.image = UIImage(named: "Tutu")
        }
        if (CardControl  == 3){
            Descricao.text = "Quem ousa invadir essas terras místicas? A natureza me deixou encarregado para impedir qualquer turista\n\nSou protetor do calor, senhor das chamas, minhas asas guardam os poderes do fogo. Qualquer um que tentar tomar esse poder terá que me enfrentar!"
            Name.image = UIImage(named: "urubu-rei.name")
            foto.image = UIImage(named: "Urubu")
        }
    
    
  }
    @IBAction func Gestor(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
