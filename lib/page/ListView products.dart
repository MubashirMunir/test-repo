// void initState() {
//   super.initState();
//   loadData();
//   setState(() {
//   });
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:species/page/ItemList.dart';
import '../modules/dataModule.dart';

class Products extends StatefulWidget {
  Products({
    Key? key,
  }) : super(key: key);
  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products>
    with SingleTickerProviderStateMixin {
  late TabController tc;
  void initState() {
    tc = TabController(length: 2, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print(context);
              },
            )
          ],
          leading: Icon(Icons.menu),
          elevation: 0,
          toolbarHeight: 25,
          title: Text("SPECIES"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: Catalog.items.length,
            itemBuilder: (context, index) {
              return speciesList(item: Catalog.items[index]);
            }));
  }
}
//  loadData() async{
//   final jsonData = await rootBundle.loadString("assets/file/Data.json");
//   var decoded = jsonDecode(jsonData);
// var productData =decoded["Item"];
// Catalog.items=List.from(productData).map((item)=> Item.forMap(item) ).toList();
// }
