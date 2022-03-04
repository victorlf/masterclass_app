class CpfModel {
  final String value;

  CpfModel(this.value);

  String _cleanCpf() {
    var result = value.replaceAll('.', '');
    result = result.replaceAll('-', '');

    return result;
  }

  int _validateVerificationNumber(List<int> cpfNumbers, int lastIndex) {
    var result = 0;
    var count = lastIndex + 1;
    for (var i = 0; i < lastIndex; i++) {
      result += cpfNumbers[i] * count;
      count -= 1;
    }

    result = result * 10;
    final digit = result % 11;

    return digit == 10 ? 0 : digit;
  }

  bool _checkDigits(List<int> cpfNumbers, int digit1, int digit2) {
    return (digit1 == cpfNumbers[9]) && (digit2 == cpfNumbers[10]);
  }

  bool validate() {
    final cpf = _cleanCpf();
    var cpfArray = cpf.split('');

    var areRepeatedNumbers =
        cpfArray.every((element) => element == cpfArray[0]);
    if (areRepeatedNumbers) return false;

    final cpfNumbers = cpfArray.map((e) => int.parse(e)).toList();

    final digit1 = _validateVerificationNumber(cpfNumbers, 9);

    final digit2 = _validateVerificationNumber(cpfNumbers, 10);

    return _checkDigits(cpfNumbers, digit1, digit2);
  }
}
