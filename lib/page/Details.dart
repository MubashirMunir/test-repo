import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:species/modules/dataModule.dart';

class details extends StatefulWidget {
  details({required this.item});
  final Item item;
  State<details> createState() => _detailsState(this.item);
}

class _detailsState extends State<details> {
  _detailsState(this.item);
  final Item item;
  int currentIndex = 0;
  static const menuItem = <String>[
    'One'
        'Two'
        'Three'
        'Four'
  ];
  CarouselController cc = CarouselController();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text("One"),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text("Two"),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text("Three"),
                ),
              ],
            ),
          ],
          toolbarHeight: 40,
          bottomOpacity: 5,
          elevation: 0,
        ),
        backgroundColor: Colors.teal,
        body: SingleChildScrollView(
          child: Column(children: [
            Image.network(item.image),
            SizedBox(height: 5),
            Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    boxShadow: [BoxShadow(blurRadius: 2)],
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    item.name,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ),
                )),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: CupertinoColors.white,
                  boxShadow: [BoxShadow(blurRadius: 1)]),
              height: 500,
              width: 358,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  item.desc,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            )
          ]),
        ));
  }
}












//
// CustomScrollView(slivers:[SliverAppBar(
// stretch: true,
// expandedHeight: 150,
// pinned: true,
// floating: true,
// backgroundColor: Colors.brown,
// ),
// SliverToBoxAdapter(
// child: Column(children: [
// // Stack(children:[
// //   InkWell(
// //   onTap: (){print(currentIndex);},
// //   child: CarouselSlider(
// //      items: images.map((item) => Image.network(item['image_path'])).toList(),
// //      carouselController:cc,
// //      options: CarouselOptions(
// //      viewportFraction: 1,
// //      aspectRatio: 2,
// //      scrollPhysics: BouncingScrollPhysics(),
// //      height: 250,
// //      autoPlay: true,
// //      scrollDirection:Axis.horizontal,
// //      onPageChanged: (index,reason){setState((){currentIndex = index;});}
// //       )),
// // ),
// // ]),
//
// ]),
//
// )],
// ),