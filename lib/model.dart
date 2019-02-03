class DataItem {
  String itemId;
  String itemName;
  String description = '“Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.”';
  String category;
  int sortposition;
  double price;
  String image;

  DataItem(
      this.itemId,
      this.itemName,
//      this.description,
      this.category,
      this.sortposition,
      this.price,
      this.image);

//  static  List<DataItem> dataProduk(){
//    var listProduk = new List<DataItem>();
//
//
//
//    listProduk.add(new DataItem(itemId: "1",itemName: "Nasi Goreng Merah", description: "Nasi Goreng Merah nikmat sekali", category: "makanan", sortposition: 1,price: 20000,image: "nasigorengmerah.jpg"));
//    listProduk.add(new DataItem(itemId: "2",itemName: "Nasi Goreng Seafood", description: "Nasi Goreng Merah nikmat sekali", category: "makanan", sortposition: 1,price: 20000,image: "nasigorengseafood.jpg"));
//    listProduk.add(new DataItem(itemId: "3",itemName: "Nasi Goreng Mawut", description: "Nasi Goreng Merah nikmat sekali", category: "makanan", sortposition: 1,price: 20000,image: "nasigorengmawut.jpg"));
//    listProduk.add(new DataItem(itemId: "4",itemName: "Mie Ayam", description: "Mie Ayam nikmat sekali", category: "makanan", sortposition: 1,price: 20000,image: "mieayam.jpg"));
//    listProduk.add(new DataItem(itemId: "5",itemName: "Es Teh Manis", description: "Es Teh Manis Segar", category: "minuman", sortposition: 1,price: 4000,image: "estehmanis.jpg"));
//    listProduk.add(new DataItem(itemId: "6",itemName: "Air Mineral", description: "Air Mineral ", category: "minuman", sortposition: 1,price: 3000,image: "airmineral.jpg"));
//    listProduk.add(new DataItem(itemId: "7",itemName: "Ayam Bakar", description: "Nasi Goreng Merah nikmat sekali", category: "makanan", sortposition: 1,price: 20000,image: "ayambakar.jpg"));
//    listProduk.add(new DataItem(itemId: "8",itemName: "Ayam Kremes", description: "Nasi Goreng Merah nikmat sekali", category: "makanan", sortposition: 1,price: 20000,image: "ayamkremes.jpg"));
//    listProduk.add(new DataItem(itemId: "9",itemName: "Ayam Geprek", description: "Nasi Goreng Merah nikmat sekali", category: "makanan", sortposition: 1,price: 20000,image: "ayamgeprek.jpg"));
//    listProduk.add(new DataItem(itemId: "10",itemName: "Bakso", description: "Mie Ayam nikmat sekali", category: "makanan", sortposition: 1,price: 20000,image: "bakso.jpg"));
//    listProduk.add(new DataItem(itemId: "5",itemName: "Es Teh Manis", description: "Es Teh Manis Segar", category: "minuman", sortposition: 1,price: 4000,image: "estehmanis.jpg"));
//    listProduk.add(new DataItem(itemId: "1",itemName: "Nasi Goreng Merah", description: "Nasi Goreng Merah nikmat sekali", category: "makanan", sortposition: 1,price: 20000,image: "nasigorengmerah.jpg"));
//    listProduk.add(new DataItem(itemId: "2",itemName: "Nasi Goreng Seafood", description: "Nasi Goreng Merah nikmat sekali", category: "makanan", sortposition: 1,price: 20000,image: "nasigorengseafood.jpg"));
//    listProduk.add(new DataItem(itemId: "3",itemName: "Nasi Goreng Mawut", description: "Nasi Goreng Merah nikmat sekali", category: "makanan", sortposition: 1,price: 20000,image: "nasigorengmawut.jpg"));
//    listProduk.add(new DataItem(itemId: "4",itemName: "Mie Ayam", description: "Mie Ayam nikmat sekali", category: "makanan", sortposition: 1,price: 20000,image: "mieayam.jpg"));
//    listProduk.add(new DataItem(itemId: "5",itemName: "Es Teh Manis", description: "Es Teh Manis Segar", category: "minuman", sortposition: 1,price: 4000,image: "estehmanis.jpg"));
//    listProduk.add(new DataItem(itemId: "1",itemName: "Nasi Goreng Merah", description: "Nasi Goreng Merah nikmat sekali", category: "makanan", sortposition: 1,price: 20000,image: "nasigorengmerah.jpg"));
//    listProduk.add(new DataItem(itemId: "2",itemName: "Nasi Goreng Seafood", description: "Nasi Goreng Merah nikmat sekali", category: "makanan", sortposition: 1,price: 20000,image: "nasigorengseafood.jpg"));
//    listProduk.add(new DataItem(itemId: "3",itemName: "Nasi Goreng Mawut", description: "Nasi Goreng Merah nikmat sekali", category: "makanan", sortposition: 1,price: 20000,image: "nasigorengmawut.jpg"));
//    listProduk.add(new DataItem(itemId: "4",itemName: "Mie Ayam", description: "Mie Ayam nikmat sekali", category: "makanan", sortposition: 1,price: 20000,image: "mieayam.jpg"));
//
//
//    return listProduk;
//    }


}

final List<DataItem> data =[
  DataItem('1','Nasi Goreng Merah','makanan',1,20000,'src/nasigorengmerah.jpg'),
  DataItem('2', 'Nasi Goreng Seafood', 'makanan', 1, 20000, 'src/nasigorengseafood.jpg'),
  DataItem('3', 'Nasi Goreng Mawut', 'makanan', 1, 20000, 'src/nasigorengmawut.jpg'),
  DataItem('4', 'Mie Ayam', 'makanan', 1, 20000, 'src/mieayam.jpg'),
  DataItem('5', 'Bakso', 'makanan', 1, 20000, 'src/bakso.jpg'),
  DataItem('6', 'Ayam Geprek', 'makanan', 1, 20000, 'src/ayamgeprek.jpg'),
  DataItem('7', 'Ayam Bakar', 'makanan', 1, 20000, 'src/ayambakar.jpg'),
  DataItem('8', 'Ayam Kremez', 'makanan', 1, 20000, 'src/ayamkremes.jpg'),
  DataItem('9', 'Nasi Goreng Seafood', 'makanan', 1, 20000, 'src/nasigorengseafood.jpg'),
  DataItem('10', 'Es Teh Manis', 'minuman', 1, 4000, 'src/estehmanis.jpg'),
  DataItem('11', 'Air Mineral', 'minuman', 1, 3000, 'src/airmineral.jpg'),
  DataItem('12', 'Aneka Camilan', 'makanan', 1, 10000, 'src/gambar1.jpg'),
  DataItem('13', 'Aneka Camilan', 'makanan', 1, 10000, 'src/gambar2.jpg'),
  DataItem('14', 'Aneka Camilan', 'makanan', 1, 10000, 'src/gambar3.jpg'),
  DataItem('15', 'Aneka Camilan', 'makanan', 1, 10000, 'src/gambar4.jpg'),
  DataItem('16', 'Aneka Camilan', 'makanan', 1, 10000, 'src/gambar5.jpg'),
  DataItem('17', 'Aneka Camilan', 'makanan', 1, 10000, 'src/gambar6.jpg'),
  DataItem('18', 'Aneka Camilan', 'makanan', 1, 10000, 'src/gambar7.jpg'),
  DataItem('19', 'Aneka Camilan', 'makanan', 1, 10000, 'src/gambar8.jpg'),
  DataItem('20', 'Aneka Camilan', 'makanan', 1, 10000, 'src/gambar9.jpg'),
  
];



