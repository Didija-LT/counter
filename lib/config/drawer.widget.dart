import 'package:counter_apps/config/global.params.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.black87,
                        Colors.purple
                      ]
                  )
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/img.png"),
              )
          ),

          ...(GlobalParams.menus).map((item){
            return ListTile(
              title: Text('${item['title']}',style:TextStyle(fontSize: 22) ,),
              leading: item['icon'],
              trailing: Icon(Icons.arrow_right,color: Colors.purple,),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '${item['route']}');
              },
            );
          })

        ],
      ),
    );
  }
}