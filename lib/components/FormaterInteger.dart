

class FormaterInteger{
  String priceFormat(int price) {
    // Membuat objek NumberFormat untuk format ribuan dengan pemisah titik

    String priceAsString = price.toString();
    int lenghtofPrice = priceAsString.length;

    String hasil = '';

    List splitPrice = priceAsString.split('');

    // perulangan akan dilakukan berdasarkan panjang angka price
    int looping = ((lenghtofPrice - 1) / 3).toInt();

    // temp menunjukkan 3 angka dari belakang
    int temp = lenghtofPrice - 3;
    for (int i = 0; i < looping; i++) {
      splitPrice.insert(temp, '.');
      temp = temp - 3;
    }

    hasil = splitPrice.join('');
    return hasil;
  }
}
