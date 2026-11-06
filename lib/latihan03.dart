sealed class Result<T> {}

class Success<T> extends Result<T> {
  Success(this.data);
  final T data;
}

class Failure<T> extends Result<T> {
  Failure(this.message);
  final String message;
}

Result<int> parseUmur(String input) {
  int? umur = int.tryParse(input);

  if (umur == null) {
    return Failure<int>('Input harus berupa angka');
  }

  if (umur < 0) {
    return Failure<int>('Umur tidak boleh negatif');
  }

  return Success<int>(umur);
}

void main() {
  tampilkanHasil(parseUmur('25'));
  tampilkanHasil(parseUmur('abc'));
  tampilkanHasil(parseUmur('-5'));
}

void tampilkanHasil(Result<int> result) {
  switch (result) {
    case Success<int>(data: final umur):
      print('Umur: $umur');

    case Failure<int>(message: final pesan):
      print('Gagal: $pesan');
  }
}
