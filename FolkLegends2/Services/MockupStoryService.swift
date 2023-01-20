//
//  MockupStoryService.swift
//  FolkLegends2
//
//  Created by Anna Alicia Milani on 18/01/23.
//

import Foundation
import UIKit

class MockupStoryService {
    static let allStories: [Story] = [
        .init(idDoor: 0,
              imgCharCardBestiary: UIImage(named: "card.guarana")!,
              imgCharStoryBestiary: UIImage(named: "hist.guarana")!,
              isDoorLocked: true,
              isCardLocked: true,
              nameCharacter: "Guaraná",
              topicInitialBestiary: "Pedido",
              labelInicialBestiary: "Um casal de índios pertencente à tribo Maués não possuíam filhos e desejavam muito uma criança.\nUm dia, eles pediram a Tupã uma criança para completar sua felicidade. Tupã, o rei dos deuses, lhes atendeu o desejo trazendo a eles um lindo menino, bonito, generoso e bom.",
              topicMiddleBestiary: "Vingança",
              labelMiddleBestiary: "O tempo passou e Jurupari, o deus da escuridão, sentia uma extrema inveja do menino, da paz e da felicidade que ele transmitia, e decidiu então se livrar dele.\n\nUm dia o menino foi coletar frutos na floresta, Jurupari se transformou em uma serpente venenosa e o mordeu, matando-o instantaneamente.\n\nA triste notícia espalhou-se rapidamente. Nesse momento, trovões ecoaram na floresta e fortes relâmpagos caíram pela aldeia.",
              topicEndBestiary: "Transformação",
              labelEndBestiary: "A mãe, que chorava em desespero, entendeu que os trovões eram uma mensagem de Tupã, dizendo que ela deveria plantar os olhos da criança e que deles uma nova planta cresceria dando saborosos frutos.\n\nOs índios obedeceram ao pedido da mãe e plantaram os olhos do menino. Nesse lugar, cresceu o guaraná, cujas sementes são negras e têm um arilo em seu redor, imitando os olhos humanos.",
              element: .terra,
              unlockedElement: .agua,
              imgInitialDoor: UIImage(named: "ret.door.terra")!,
              imgInitialDoorLocked: UIImage(named: "ret.lock.terra")!,
              numOfGameCards: 3,
              gameDesc: "Olá? Você deve tá se perguntando da onde vem essa voz…\n\nEu sou aquele nascido da terra, aquele que tem os olhos espalhados onde quer que pise… Meu nome é Guaraná!\n\nPara você saber mais sobre minha história tenho um jogo perfeito!!! O objetivo é eliminar primeiro todas as cartas do adversário. Se baseie nas relações elementais que você encontra no botão de ajuda.",
              imgCharGame: UIImage(named: "Guarana.name")!,
              imgCharNameGame: UIImage(named: "Guarana")!,
              victoryLabel: "Que bacana! Você finalmente vai me conhecer melhor. Olha só a minha carta no bestiário!",
              imgDefeat: UIImage(named: "derrota.guarana")!,
              defeatLabel: "É uma grande pena mas estou pronto pra jogar novamente e você?"
             ),
        
            .init(idDoor: 1,
                  imgCharCardBestiary: UIImage(named: "card.peixe")!,
                  imgCharStoryBestiary: UIImage(named: "hist.peixe")!,
                  isDoorLocked: true,
                  isCardLocked: true,
                  nameCharacter: "Surgimento dos Peixes",
                  topicInitialBestiary: "A caça",
                  labelInicialBestiary: "Tudo começou com o aparecimento na aldeia de um certo Birá, um índio sedutor, o terror da honra de todos os homens.\n\nNum belo dia, os índios pediram ao pajé para lançar um feitiço sobre o kaiapó sedutor.\n\nCom muita pressão, o pajé fez e Birá tomou uma poção maldita que o transformou em uma anta.",
                  topicMiddleBestiary: "A ceia",
                  labelMiddleBestiary: "Depois de caçarem o Birá como se fosse um animal comum levaram para aldeia como prato principal para a ceia. Todas as mulheres foram obrigadas a se servir dos pedaços da anta.\n\nEntão, quando a ceia tribal terminou, o cacique ergueu-se e fez a hedionda revelação:\n– Mulheres pérfidas! Vocês acabaram de comer Birá, o sedutor maldito!\n\nInstantaneamente, as pobrezinhas começaram a vomitar e a chorar.",
                  topicEndBestiary: "Transformações",
                  labelEndBestiary: "No dia seguinte os homens foram caçar. Graças a Tupã não havia mais Birá para aproveitar-se da ausência deles!\n\nPorém as mulheres com pinturas corporais das mais diversas (pintas, riscas, manchas de todas as cores) se reuniram e decidiram fugir e pular no rio. Após o pulo, transformaram-se em peixes.\n\nQuando os homens retornaram a aldeia, ficaram extremamente desolados com a notícia de terem perdido a esposa e seus colegas da aldeia. \n\nLoucos e tristes, cometeram sua ultima tolice: ao invés de se atirarem ao rio, foram para a mata onde se transformaram em macacos, cutias e toda espécie de animais silvestres.",
                  element: .agua,
                  unlockedElement: .ar,
                  imgInitialDoor: UIImage(named: "ret.door.agua")!,
                  imgInitialDoorLocked: UIImage(named: "ret.lock.agua")!,
                  numOfGameCards: 4,
                  gameDesc: "Olá, alma perdida, eu sou aquele que foi traído e transformado em anta por aqueles que tinham inveja da minha beleza e sedução.\n\nBirá é meu nome! Fui o estopim para que algo importante acontecesse. Posso compartilhar essa história, se você tiver disposto a duelar comigo!",
                  imgCharGame: UIImage(named: "SurgPei.name")!,
                  imgCharNameGame: UIImage(named: "Bira")!,
                  victoryLabel: "Que duelo excelente! Agora que terminamos essa partida, você conhecerá as injustiças que aconteceram comigo.",
                  imgDefeat: UIImage(named: "derrota.peixe")!,
                  defeatLabel: "Assim como eu, você perdeu essa batalha mas não desanime, vamos tentar novamente!"
                 ),
        
            .init(idDoor: 2,
                  imgCharCardBestiary: UIImage(named: "card.tutu")!,
                  imgCharStoryBestiary: UIImage(named: "hist.tutu")!,
                  isDoorLocked: true,
                  isCardLocked: true,
                  nameCharacter: "Tutu",
                  topicInitialBestiary: "Parentesco",
                  labelInicialBestiary: "Irmão do Bicho-Papão e do Boi da Cara Preta, o Tutu é senhor dos terrores noturnos infantis na Bahia, em Pernambuco, no Rio de Janeiro e em Minas Gerais.",
                  topicMiddleBestiary: "Característica",
                  labelMiddleBestiary: "Existem várias modalidades da criatura, das quais a mais singular é a do Tutu-zambê, que, além de não possuir forma, não possui também a cabeça. Na Bahia, por sua vez, o Tutu deixa de ser uma mera sombra para assumir a forma explícita de um porco-do-mato, graças à semelhança dos termos tutu e caititu.",
                  topicEndBestiary: "Ajuda",
                  labelEndBestiary: "Nossas mães indígenas preferiam invocar o auxílio dos pássaros ou animais de sono prolongado, a fim de que o emprestassem a seus indiozinhos insones.",
                  element: .ar,
                  unlockedElement: .fogo,
                  imgInitialDoor: UIImage(named: "ret.door.ar")!,
                  imgInitialDoorLocked: UIImage(named: "ret.lock.ar")!,
                  numOfGameCards: 4,
                  gameDesc: "Chegou a hora do caos e quem tiver na minha frente sofrerá!\n\nAs pessoas tremem enquanto tentam pronunciar meu nome. Eu sou aquele que vagueia nas profundezas dos seus sonhos. Se você tiver coragem, tente me vencer…",
                  imgCharGame: UIImage(named: "tutu.name")!,
                  imgCharNameGame: UIImage(named: "Tutu")!,
                  victoryLabel: "Claro que você ganhou… Eu deixei. Está aqui a minha carta.",
                  imgDefeat: UIImage(named: "derrota.tutu")!,
                  defeatLabel: "Haha! Vai desistir ou tentar perder de novo?"
                 ),
        
            .init(idDoor: 3,
                  imgCharCardBestiary: UIImage(named: "card.bahira")!,
                  imgCharStoryBestiary: UIImage(named: "hist.bahira")!,
                  isDoorLocked: true,
                  isCardLocked: true,
                  nameCharacter: "Bahira e o Rapto do fogo",
                  topicInitialBestiary: "Posse",
                  labelInicialBestiary: "O urubu era considerado o dono do fogo. Ele não o concedia a ninguém, e os homens não sabiam o que era utilizar-se das chamas para cozinhar uma comida ou aquecer-se do frio. O sol era a única fonte de calor, e era nele que os homens buscavam remediar a sua privação.",
                  topicMiddleBestiary: "Perseguição",
                  labelMiddleBestiary: "Certo dia, eles decidiram recorrer a Bahira - um semideus das matas - que penalizado dos homens armou um plano.\n\nDeitou-se no meio da floresta e fingiu-se de morto para chamar a atenção do Senhor do Fogo.\n\nAo ver o corpo de Bahira, o urubu pousou e depositou a preciosa chama sobre os gravetos a fim de preparar o fogo para assá-lo. Num pulo, Bahira apoderou-se da chama.\n\nUma perseguição desenfreada começou, porém o semideus se safou.",
                  topicEndBestiary: "Sacrifícios",
                  labelEndBestiary: "Como última missão, precisava entregar o fogo para os índios e ao ver uma cobra passar na beira do rio, apanhou-a e colocou o tição de fogo nas suas costas, ela começou a nadar mas acabou sucumbindo no meio de sua jornada. O mesmo aconteceu com o camarão e a saracura.\n\nAté que o mensageiro ideal apareceu, o sapo-cururu, que tinha o hábito de ingerir brasas, pensando tratar-se de vaga-lumes. Desta vez tudo correu bem e o fogo foi entregue aos índios.",
                  element: .fogo,
                  unlockedElement: .todos,
                  imgInitialDoor: UIImage(named: "ret.door.fogo")!,
                  imgInitialDoorLocked: UIImage(named: "ret.lock.fogo")!,
                  numOfGameCards: 5,
                  gameDesc: "Quem ousa invadir essas terras místicas? A natureza me deixou encarregado para impedir qualquer turista\n\nSou protetor do calor, senhor das chamas, minhas asas guardam os poderes do fogo. Qualquer um que tentar tomar esse poder terá que me enfrentar!",
                  imgCharGame: UIImage(named: "urubu-rei.name")!,
                  imgCharNameGame: UIImage(named: "Urubu")!,
                  victoryLabel: "Muita calma. Agora que você possui tal poder precisará entender a sua origem, olhe só minha carta no bestiário!",
                  imgDefeat: UIImage(named: "derrota.bahira")!,
                  defeatLabel: "Boa luta mas você ficará preso aqui para sempre enquanto não me ganhar!"
                 )
    ]
    
}
