import 'package:flutter/material.dart';

class ScaffoldClass extends StatefulWidget {
  const ScaffoldClass({super.key});

  @override
  State<ScaffoldClass> createState() => _ScaffoldClassState();
}

class _ScaffoldClassState extends State<ScaffoldClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1-App bar
      appBar: AppBar(
        //1.1
        // leading: iconbtn(txt: "Leading", icon: Icons.arrow_back),
        //1.2
        title: Text("title"),
        //1.3
        centerTitle: true,
        //1.4
        actions: [
          iconbtn(txt: "notification", icon: Icons.notification_add),
          iconbtn(txt: "message", icon: Icons.message),
          iconbtn(txt: "profile", icon: Icons.person)
        ],
        //1.5
        backgroundColor: Colors.blue.shade200,
        //1.6
        flexibleSpace:
        Padding(
          padding: const EdgeInsets.only(top:80),
          child: Center(child: Text("flex space",style: TextStyle(fontSize: 25),)),
        ),
        //1.7
        bottom:PreferredSize(preferredSize: Size(10, 200),
        child: Text("bottom from bottom pro"),) ,
      ),
      //2- body
      //3-floating action btn
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar
          (SnackBar(content: Text("floating button")));
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.blue.shade200,
      shape: CircleBorder(),),

      //4-Drawer
      drawer:Drawer(
        child: Column(
          children: [
            SizedBox(height:100),
            CircleAvatar(backgroundImage:NetworkImage("https://cdn-icons-png.flaticon.com/512/3135/3135715.png") ,
            radius: 50,),
            listTileFun(txt: "Account", icon: Icons.person),
            listTileFun(txt: "Settings", icon: Icons.settings),
            listTileFun(txt: "logout", icon: Icons.logout)

          ],
        ),
      ) ,

      //5-end drawer

      endDrawer: Drawer(
        child: Column(
      children: [
      SizedBox(height:100),
      CircleAvatar(backgroundImage:NetworkImage("https://cdn-icons-png.flaticon.com/512/3135/3135715.png") ,
        radius: 50,),
      listTileFun(txt: "Account", icon: Icons.person),
      listTileFun(txt: "Settings", icon: Icons.settings),
      listTileFun(txt: "logout", icon: Icons.logout)

      ],
    ),
      ),
      

    );
  }

  Widget iconbtn ({required String txt,required IconData icon}){
    return IconButton(onPressed: (){
      ScaffoldMessenger.of(context).showSnackBar
        (SnackBar(content:Text(txt) ));
    },
        icon: Icon(icon));
  }

  Widget listTileFun({required String txt, required IconData icon}){
    return ListTile(
      title: Text(txt),
      leading: Icon(icon),
    );
  }
}
