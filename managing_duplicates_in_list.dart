extension Duplicates<T> on List<T> {
  void addAllByAvoidingDuplicates(Iterable<T> values) =>
      replaceRange(0, length, {
        ...([...this] + [...values])
      });

  int get numberOfDuplicates => length - {...this}.length;

  bool get containDuplicates => numberOfDuplicates > 0;

  List<T> get uniques => [
        ...{...this}
      ];
  void removeDuplicates() => replaceRange(0, length, uniques);

  void printValue() => print({...this});
  List<T> get duplicates => [
        for (var i = 0; i < length; i++)
          this.skip(i + 1).contains(this[i]) ? this[i] : null
      ].whereType<T>().toList();
}

void testMangerDuplicatesInList() {
  final values = [3, 2, 10, 30, 40, 30, 100, 10];

  print(values.duplicates);

  values.printValue();
}
