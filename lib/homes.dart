import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:list_produk/details.dart';
import 'package:list_produk/model.dart';

class Home extends StatelessWidget {
  final money = NumberFormat("#,##0", "en_US");

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      centerTitle: true,
      backgroundColor: Colors.lightGreen,
      elevation: 5,
      leading: IconButton(icon: Icon(Icons.home), onPressed: null),
      title: Text('My Store'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );

    createlist(DataItem produk) => Container(
          height: 120.0,
          child: InkWell(
            onTap: () {},
            child: Card(
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Details(produk))),
                    child: ColumnCustom(
                        tag: produk.itemId,
                        gambar: produk.image,
                        nama: produk.itemName,
                        harga: "Rp " + money.format(produk.price)),
                  )
                ],
              ),
            ),
          ),
        );

    ///mapping data from model
    final grid = ListView(
      children: data.map((produk) => createlist(produk)).toList(),
    );

    return Scaffold(
      backgroundColor: Colors.green[100],
     // backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar,
      body: grid,
    );
  }
}

class ColumnCustom extends StatelessWidget {
  final String gambar, nama, harga, tag;

  ColumnCustom({this.nama, this.gambar, this.harga, this.tag});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Hero(
                  tag: tag,
                  placeholderBuilder: (context, child) {
                    return Opacity(opacity: 0.2, child: child);
                  },
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(16.0),
                    child: Image.asset(
                      gambar,
                      height: 90.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ))
          ],
        ),
        SizedBox(
          width: 5.0,
        ),
        Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
                nama,
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
            Text(
              harga,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
            )
          ],
        )
      ],
    );
  }
}
