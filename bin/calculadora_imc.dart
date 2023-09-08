import 'package:calculadora_imc/pessoa.dart';
import 'dart:io';

void main(List<String> arguments) {
  try {
    print("Digite o nome da pessoa:");
    String nome = stdin.readLineSync()!;

    print("Digite a altura (em metros):");
    double altura = double.parse(stdin.readLineSync()!);

    print("Digite o peso (em Kg):");
    double peso = double.parse(stdin.readLineSync()!);

    Pessoa pessoa = Pessoa(nome, altura, peso);

    double imc = pessoa.calcularIMC();

    print("O IMC de ${pessoa.getNome()} é: $imc");
  } catch (e) {
    print("Erro: $e");
    print("mensagem: Não é um numero válido.");
  }
}
