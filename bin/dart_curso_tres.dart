void main(List<String> arguments) {
  //versão do Dart -> 2.14.0

  /*Aula 1 Sintaxe
  - Slide explicado sobre a estrutura da sintaxe em:
  Objetos (criação de objetos)
  Variáveis (int,bool,String)
  Classes (estrutura das Classes)
  **ISSO É UMA REVISÃO DO ULTIMO CURSO BASICAMENTE
  -Novo Recurso: Enums (adicionado fora da main)
  */
  Viajar jalapao = Viajar(locomocao: Transporte.carro);
  jalapao.aventura(); // codigo sem enum
  jalapao.aventura2(); // codigo com enum

  /*Aula 2 Collections

  * */

  /*Aula 3 Dinamismo*/
  /*Aula 4 Encapsulamento*/
  /*Aula 5 Callbacks
  */
}

class Viajar {
  //Na Aula 1 vamos criar uma classe para viajar, mas vamos fazer de um jeito beeem errado, que é usando números para definir o tipo de locomoção.
  // 1 = Carro; 2 = Bicicleta; 3 = Avião;
  Transporte locomocao;

  Viajar({required this.locomocao});

  void aventura() {
    //esse modo de definir a locomocao é péssimo, pois não é intuitivo, imagina se nos temos 100 tipos diferentes de locomocao? teremos que ir na tabela para assegurar que o numero escolhido é o correto...
    if (locomocao == 1) {
      print('Estou indo numa Aventura de Carro!');
    } else if (locomocao == 2) {
      print('Estou indo numa Aventura de Carro!');
    } else if (locomocao == 3) {
      print('Estou indo numa Aventura de Carro!');
    } else {
      print('Estou indo numa Aventura!');
    }
  }//Aula 1
  void aventura2(){
    //aqui vamos usar o Enums para melhorar
    //também vamos usar switch and case, que foram disponibilizados num para saber mais do curso 1.
    switch(locomocao){
      case Transporte.carro:
        print('Estou indo numa Aventura de Carro!');
        break;
      case Transporte.bicicleta:
        print('Estou indo numa Aventura de Bike!');
        break;
      case Transporte.onibus:
        print('Estou indo numa Aventura de Busão!');
        break;
      case Transporte.aviao:
        print('Estou indo numa Aventura de Avião!');
        break;
      case Transporte.andando:
        print('Estou indo numa Aventura a Pé!');
        break;
      case Transporte.helicoptero:
        print('Estou indo numa Aventura de Helicóptero!');
        break;
      case Transporte.patins:
        print('Estou indo numa Aventura de Patins!');
        break;
      case Transporte.skate:
        print('Estou indo numa Aventura de Skate!');
        break;
      default:{
        print('Estou indo numa Aventura!');
      }
    }
  }//Aula 1
}

enum Transporte {
  //Aula 1 -> Resolvendo o problema dos numeros
  carro,
  bicicleta,
  onibus,
  aviao,
  andando,
  helicoptero,
  patins,
  skate,
}

