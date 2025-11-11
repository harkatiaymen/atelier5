void main() {
  try {
    var result = 12 ~/ 0;  // Division entière par zéro
    print(result);
  } catch (e) {
    print("Division impossible");
  }
}