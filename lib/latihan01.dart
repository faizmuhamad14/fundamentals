({int min, int max})? minMax(List<int> numbers) {
  if (numbers.isEmpty) return null;
  var min = numbers.first;
  var max = numbers.first;

  for (final n in numbers) {
    if (n < min) {
      min = n;
    }
    if (n > max) {
      max = n;
    }
  }
  return (min: min, max: max);
}

void main() {
  List<int> numbers = [3, 2, 3, 4, 5, 6, 7, 8];
  var result = minMax(numbers);

  if (result != null) {
    print(result.min);
    print(result.max);
  } else {
    print('kosong der');
  }
}
