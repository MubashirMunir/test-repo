import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:species/modules/dataModule.dart';
import 'package:species/page/Details.dart';

class speciesList extends StatelessWidget {
  speciesList({
    required this.item,
  }) : assert(item != null);
  late Item item;
  late TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: const EdgeInsets.all(.5),
          child: Card(
              elevation: .5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => details(item: item)));
                  },
                  title: Text(item.name),
                  subtitle: Text(item.Height),
                  leading: Hero(
                    tag: item.image,
                    child: StreamBuilder<ConnectivityResult>(
                        stream: Connectivity().onConnectivityChanged,
                        builder: (context, snapshot) {
                          return snapshot.data == ConnectivityResult.none
                              ? CircularProgressIndicator()
                              : Image.network(item.image);
                        }),
                  ))))
    ]);
  }
}
