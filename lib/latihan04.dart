final _emailPattern = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
// Harus ada minimal satu karakter yang bukan @ dan bukan whitespace.

// [^@\s]+: benar. Tambahan kecil: + artinya “satu atau lebih”, jadi bagian itu boleh panjang. \s mencakup spasi, tab, dan baris baru, itulah yang disebut whitespace.
// \.: benar. Tanpa \, titik berarti “karakter apa saja”, sehingga faiz@gmailXcom ikut lolos.
// ^ dan $: benar. Contohnya, tanpa keduanya 'halo faiz@gmail.com' dianggap valid, karena pola ditemukan di sebagian teks.
 
extension StringX on String {
    bool get isValidEmail => _emailPattern.hasMatch(this);
}

extension IntListExtension on List<int>{
  double? get average {
//     if (isEmpty) return null; menggunakan reduce

//     final total = reduce((a, b) => a + b);

//     return total / length;
    
    if (isEmpty) return null;
    
    var total = 0;
    for (final n in this){
      total += n;
    }
    return total / length;
  }
}

void main() {
  List<int> angka = [10,20,30,40];
  print('faiz@gmail.com'.isValidEmail); // true
  print('faizgmail.com'.isValidEmail); // false
  print('faiz@'.isValidEmail);         // false
  print(''.isValidEmail);              // false
  print(angka.average);
}