// LESSON 1
// void main() {
//   int a = 2;
//   int b = 3;
//   int c = a + b;
//   print(c);
// }

// LESSON 2
// int penjumlahan(int a, {int? b}) {
//   return a + b!;
// }

// void main(){
//   print(penjumlahan(4, b:5));
// }

// LESSON 3
// void main() {
//   String? nama = "Bagus";
//   print(nama ?? "Tidak ada nama");
// }

// LESSON 4 LIST
// void main() {
// List<int> nilai = [1, 2, 2, 3];
// for (int i in nilai) {
// print(i);
// }

// LESSON 5 SET
// void main() {
// Set<int> nilai = {1, 2, 2, 3, 4, 4};
// for (int i in nilai) {
// print(i);
// }
// }

// LESSON 6 MAP
// void main() {
//   Map<int, String> angka = {
//     0: "Nol",
//     1: "Satu",
//     2: "Dua",
//     3: "Tigas"
//     };
//   for (int i = 0; i < 4; i++) {
//     print(angka[i]);
//   }
// }

//LESSON 7 FOR EACH MAP
// void main() {
//   Map<int, String> angka = {0: "Nol", 1: "Satu"};
//   angka.forEach((key, value) {
//     print("$key, $value");
//   });
// }

//LESSON 8 CLASS
class Car {
  int? seats;
  String? brand;
  String? model;
  int? wheels;

  Car({
    this.seats,
    required this.brand,
    required this.model,
    required this.wheels,
  });

  void bunyi() {
    print("Vroom");
  }

  void tampilkan() {
    print(
      "Nama Mobil: $brand $model\nJumlah Kursi; $seats\nJumlah Roda: $wheels",
    );
  }
}

void main() {
  Car car = Car(seats: 6, brand: "Toyota", model: "Avanza", wheels: 4);
  car.bunyi();
  car.tampilkan();
}
