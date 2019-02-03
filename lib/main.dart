import 'package:flutter/material.dart';
import 'package:list_produk/homes.dart';
import 'package:list_produk/model.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "List Mahasiswa",
  home: Home(),
//  theme: new ThemeData(
//    primarySwatch: Colors.lightGreen,
//    platform: TargetPlatform.iOS,
//  ),
 // onGenerateRoute: (settings) => generateRoute(settings),
));

///Generate parameterized route --> e.g: detail/some book title
//generateRoute(RouteSettings settings) {
//  final path = settings.name.split('/');
//  final nama = path[1];
//
//  DataItem produk = data.firstWhere((it) => it.itemName == nama);
//  return MaterialPageRoute(
//    settings: settings,
//    builder: (context) => Detail(produk),
//  );
//}