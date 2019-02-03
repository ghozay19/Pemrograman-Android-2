import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:list_produk/model.dart';

class Details extends StatelessWidget {
  final money = NumberFormat("#,##0", "en_US");
  DataItem produk;
  Details(this.produk);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text(produk.itemName),
    );

    return Scaffold(
      // appBar: appBar,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    // var card = new Card(
    //   child: new Column(
    //     children: <Widget>[
    //       new ListTile(
    //         leading: new Icon(Icons.account_box, color: Colors.blue,size: 26.0,),
    //         title: new Text("Nguyen Duc Hoang"
    //         ,style: new TextStyle(fontWeight: FontWeight.w400),),
    //         subtitle: new Text("Software developer"),
    //       ),
    //       new Divider(color: Colors.blue,indent: 16.0,),
    //       new ListTile(
    //         leading: new Icon(Icons.email, color: Colors.blue, size: 26.0,),
    //         title: new Text("sunlight4d@gmail.com"
    //           ,style: new TextStyle(fontWeight: FontWeight.w400),),
    //       ),
    //       new ListTile(
    //         leading: new Icon(Icons.phone, color: Colors.blue, size: 26.0,),
    //         title: new Text("+84-123.456.789"
    //           ,style: new TextStyle(fontWeight: FontWeight.w400),),
    //       )
    //     ],
    //   ),
    // );
    // final sizedBox = new Container(
    //   margin: new EdgeInsets.only(left: 10.0, right: 10.0),
    //   child: new SizedBox(
    //     height: 220.0,
    //     child: card,
    //   ),
    // );
    // final center = new Center(
    //   child: sizedBox,
    // );
//     return new MaterialApp(
//       title: "",
// //      home: new Text("Add Google fonts to Flutter App")
//       home: new Scaffold(appBar: new AppBar(
//         title: new Text("Card example")
//       ),
//         body: center,
//       )
//     );

    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.lightGreen,
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(produk.itemName,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          )),
                    background: Hero(
                      tag: produk.itemId,
                      child: Image.asset(
                        produk.image,
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
            ];
          },
          body: Center(
            child: ListView(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Rp " + money.format(produk.price),
                    style: Theme.of(context)
                        .textTheme
                        .headline
                        .copyWith(color: Theme.of(context).accentColor),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(produk.description),
                ),
               
              ],
            ),
          ),
          
          ),
          floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add_shopping_cart),
      ), 
    );

    // return new CustomScrollView(
    //   slivers: <Widget>[
    //     SliverAppBar(
    //       // automaticallyImplyLeading: false,
    //       titleSpacing: 0.0,
    //       expandedHeight: 256.0,
    //       pinned: true,
    //       flexibleSpace: FlexibleSpaceBar(
    //           centerTitle: true,
    //           title: Text(produk.itemName),
    //           background: Hero(
    //             tag: produk.itemId,
    //             child: Image.asset(
    //               produk.image,
    //               fit: BoxFit.cover,
    //             ),
    //           )),
    //       // leading: IconButton(
    //       //     icon: Icon(Icons.close),
    //       //     onPressed: () {
    //       //       Navigator.pop(context);
    //       //     }),
    //     ),
    //     new SliverFillRemaining(
    //       child: Padding(
    //         padding: const EdgeInsets.all(18.0),
    //         child: Column(
    //           children: <Widget>[
    //             Text(
    //               "Rp " + money.format(produk.price),
    //               style: Theme.of(context)
    //                   .textTheme
    //                   .headline
    //                   .copyWith(color: Theme.of(context).accentColor),
    //             ),
    //             Flexible(
    //                 child: Container(
    //                   child: Column(

    //                     //mainAxisSize: MainAxisSize.max,
    //                     children: <Widget>[
    //                         Card(
    //                           child: Text(
    //                             produk.description,
    //                             style: TextStyle(
    //                               fontSize: 20.0
    //                             ),
    //                           ),
    //                         )
    //                     ],
    //                   ),
    //                 )
    //                 )
    //           ],
    //         ),
    //       ),
    //     )
    //   ],
    // );
  }
}
