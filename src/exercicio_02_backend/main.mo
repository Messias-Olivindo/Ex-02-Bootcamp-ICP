//Importar as bibliotecas com as tipagens
import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Text "mo:base/Text";

//Actor do canister desenvolvido
actor {
  //Declaração das variáveis
  var numero1 : Nat = 10;
  var numero2 : Int = 20;
  var mensagem : Text = "Meu primeiro DAPP";

  //Fazer funções para receber 2 números Nat para realizar soma, subtração e multiplicação
  //Função para somar
  public query func somarNum(num1 : Nat, num2 : Nat) : async Nat {
    return num1 + num2;
  };

  //Função para subtrair
  public query func subNum(num1 : Nat, num2 : Nat) : async Text {
    //Evitar erros caso o usuário insira uma subtração sem resultado no conjunto natural
    if (num1 < num2) {
      return "Resultado não é natural";
    };
    //Subtração normal caso o primeiro número seja maior
    return Nat.toText(num1 - num2);
  };

  //Função para multiplicação
  public query func multNum(num1 : Nat, num2 : Nat) : async Nat {
    return num1 * num2;
  };

};