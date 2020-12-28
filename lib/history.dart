class History {
  List<String> _history = [];

  void addToHistory(String firstNumber, String operationSign,
      String secondNumber, String operationResult) {
    this
        ._history
        .add("$firstNumber $operationSign $secondNumber = $operationResult");
  }

  void printHistory() {
    print(this._history);
  }

  List<String> getHistroy() {
    return this._history;
  }
}
