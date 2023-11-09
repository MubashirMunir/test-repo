import 'package:flutter/material.dart';

import '../page/about.dart';

class drawers extends StatelessWidget {
  const drawers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Drawer(
      backgroundColor: Colors.teal,
      child: Column(children: [
      UserAccountsDrawerHeader(decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
              image:AssetImage("assets/images/species.jpg"))),
      accountName: null,
      currentAccountPicture:null, accountEmail: null,),
  Divider(color: Colors.white,thickness: 1),
    ListTile(
      trailing: IconButton(onPressed: null,icon: Icon(Icons.arrow_forward_ios,color: Colors.white,),),
      title: Text("Home",style: TextStyle(fontSize: 19,color: Colors.white),),
    ),
        ListTile(
          title: Text("Version",style: TextStyle(fontSize: 19,color: Colors.white),),
        ),
        ListTile(
          title: Text("Contact Us",style: TextStyle(fontSize: 19,color: Colors.white),),
        ),
        InkWell(onTap:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>
            about(),)),
          child: ListTile(title: Text("About",style: TextStyle(color: Colors.white,fontSize: 19),),)
        )
    ]),
    );
  }
}
