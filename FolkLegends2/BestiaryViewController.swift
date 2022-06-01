import UIKit

class BestiaryViewController : UIViewController {

  @IBOutlet weak var deck: UICollectionView!
   
  var cards: [Card] = []
  var selectedCard: Card = Card()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    deck.dataSource = self
    deck.delegate = self
    
    cards = [
      Card(
        imageCharacterCard: UIImage(named: "teste1")!,
        imageCharacterDesc: UIImage(named: "teste2")!,
        locked: false,
        nameCharacter: "Guaraná",
        topicInitial: "Início",
        labelInicial: "Um casal de índios pertencente à tribo Maués não possuíam filhos e desejava muito uma criança.\nUm dia, eles pediram a Tupã uma criança para completar sua felicidade. Tupã, o rei dos deuses, lhes atendeu o desejo trazendo a eles um lindo menino, bonito, generoso e bom.",
        topicMiddle: "Vingança",
        labelMiddle: "O tempo passou e Jurupari, o deus da escuridão, sentia uma extrema inveja do menino, da paz e da felicidade que ele transmitia, e decidiu então se livrar dele.\nUm dia o menino foi coletar frutos na floresta e Jurupari para se vingar se transformou em uma serpente venenosa e o mordeu, matando-o instantaneamente.\nA triste notícia espalhou-se rapidamente. Nesse momento, trovões ecoaram na floresta e fortes relâmpagos caíram pela aldeia.",
        topicEnd: "Transformação",
        labelEnd: "A mãe, que chorava em desespero, entendeu que os trovões eram uma mensagem de Tupã, dizendo que ela deveria plantar os olhos da criança e que deles uma nova planta cresceria dando saborosos frutos.\nOs índios obedeceram ao pedido da mãe e plantaram os olhos do menino. Nesse lugar, cresceu o guaraná, cujas sementes são negras e têm um arilo em seu redor, imitando os olhos humanos."),
      
      Card(
        imageCharacterCard: UIImage(named: "teste1")!,
        imageCharacterDesc: UIImage(named: "teste2")!,
        locked: true,
        nameCharacter: "Surgimento dos Peixes",
        topicInitial: "A caça",
        labelInicial: "Tudo começou com o aparecimento na aldeia de um certo Birá, um índio sedutor, o terror da honra de todos os homens.\nEntão, num belo dia, os índios pediram ao pajé para lançar um feitiço sobre o kaiapó sedutor. Com muita pressão, o pajé fez e Birá tomou uma poção maldita que o transformou em uma anta.",
        topicMiddle: "A ceia",
        labelMiddle: "Depois de caçarem o Birá como se fosse um caça animal comum levaram para aldeia como prato principal para a ceia. Todas as mulheres foram obrigadas a se servir dos pedaços da anta.\nEntão, quando a ceia tribal terminou, o cacique ergueu-se e fez a hedionda revelação:\n– Mulheres pérfidas! Vocês acabaram de comer Birá, o sedutor maldito!\nInstantaneamente, as pobrezinhas começaram a vomitar e a chorar.",
        topicEnd: "Transformações",
        labelEnd: "No dia seguinte os homens foram caçar, deixando na companhia das mulheres com os mais idosos. Graças a Tupã não havia mais Birá para aproveitar-se da ausência deles!\nPorém as mulheres com pinturas corporais das mais diversas (pintas, riscas, manchas de todas as cores) se reuniram e decidiram fugir e pular no rio. Após o pulo, transformaram-se em peixes o que deixou os velhos assustados que também lançaram-se na água mudando sua forma para sapos e arraias.\nCom o retorno dos homens para aldeia, ficaram extremamente desolados com a notícia de terem perdido a esposa e seus colegas da aldeia. Loucos e tristes, cometeram sua ultima tolice: ao invés de se atirarem ao rio, foram para a mata onde se transformaram em macacos, cutias e toda espécie de animais silvestres."),
      
      Card(
        imageCharacterCard: UIImage(named: "teste1")!,
        imageCharacterDesc: UIImage(named: "teste2")!,
        locked: true,
        nameCharacter: "Tutu",
        topicInitial: "Inicio",
        labelInicial: "Irmão do Bicho-Papão e do Boi da Cara Preta, o Tutu é senhor dos terrores noturnos infantis na Bahia, em Pernambuco, no Rio de Janeiro e em Minas Gerais.",
        topicMiddle: "Meio",
        labelMiddle: "Existem várias modalidades da criatura, das quais a mais singular é a do Tutu-zambê, que, além de não possuir forma, não possui também a cabeça. Na Bahia, por sua vez, o Tutu deixa de ser uma mera sombra para assumir a forma explícita de um porco-do-mato, graças à semelhança dos termos tutu e caititu.",
        topicEnd: "Fim",
        labelEnd: "Nossas mães indígenas preferiam invocar o auxílio dos pássaros ou animais de sono prolongado, a fim de que o emprestassem a seus indiozinhos insones."),
      
      
      Card(
        imageCharacterCard: UIImage(named: "teste1")!,
        imageCharacterDesc: UIImage(named: "teste2")!,
        locked: true,
        nameCharacter: "Bahira e o Rapto do fogo",
        topicInitial: "Inicio",
        labelInicial: "O urubu era considerado o dono do fogo. Ele não o concedia a ninguém, e os homens não sabiam o que era utilizar-se das chamas para cozinhar uma comida ou aquecer-se do frio. O sol era a única fonte de calor, e era nele que os homens buscavam remediar a sua privação.",
        topicMiddle: "Meio",
        labelMiddle: "Certo dia, eles decidiram recorrer a Bahira - um semideus civilizador das matas - que penalizado dos homens armou um plano.\nDeitou-se no meio da floresta e fingiu-se de morto para chamar a atenção do Senhor do Fogo. Sem hesitar, o urubu envergou seu casaco negro de penas e mergulhou na direção da terra.\nAo ver o corpo de Bahira, pousou e depositou a preciosa chama sobre os gravetos a fim de preparar o fogo para assá-lo. Num pulo, Bahira apoderou-se da chama.\nUma perseguição desenfreada começou, porém o semideus se safou. ",
        topicEnd: "Fim",
        labelEnd: "Como última missão, precisava entregar o fogo para os índios e ao ver uma cobra passar na beira do rio, apanhou-a e colocou o tição de fogo nas suas costas, ela começou a nadar mas acabou sucumbindo no meio de sua jornada. O mesmo aconteceu com o camarão e a saracura.\nAté que o mensageiro ideal apareceu, o sapo-cururu, que tinha o hábito de ingerir brasas, pensando tratar-se de vaga-lumes. Desta vez tudo correu bem e o fogo foi entregue aos índios."),
      
    ]
  }
}


extension BestiaryViewController:UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return cards.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell: CardCell = deck.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath) as! CardCell
    
    cell.draw(card: cards[indexPath.item])
    
    return cell
  }
}

extension BestiaryViewController: UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    selectedCard = cards[indexPath.item]
    
    if (!selectedCard.locked) {
      performSegue(withIdentifier: "showDetail", sender: self)
    }
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let vc: DetailViewController = segue.destination as! DetailViewController
    vc.selectedCard = selectedCard
  }
}
 
