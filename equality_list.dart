extension Equality<T extends Comparable> on List<T> {
  bool isEqualTo(List<T> other) {
    if (other.length != length) {
      return false;
    }
    for (var i = 0; i < length; i++) {
      if (!this.contains(other[i])) {
        return false;
      }
    }
    return true;
  }
}


void testEqualList() {
  print(['a', 'b', 'c'].isEqualTo(['c', 'b', 'a']));
}
