import 'package:test/test.dart';
import 'package:calculadora_imc/pessoa.dart';

void main() {
  group('Pessoa', () {
    test('Calculo do IMC deve estar dentro do intervalo correto', () {
      final pessoa = Pessoa('João', 1.75, 70);
      final imc = pessoa.calcularIMC();
      expect(imc, greaterThanOrEqualTo(22.84));
      expect(imc, lessThanOrEqualTo(22.86));
    });
  });
}
