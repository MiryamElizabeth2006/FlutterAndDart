 import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  static const Color rowColor1 = Colors.blue; //Para agregar color 
  static const Color rowColor2 = Colors.black;
  static const Color rowColor3 = Colors.brown;
  static const Color rowColor4 = Colors.purple; 
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Text('SCAFFOLD!'),
        ),
        drawer: const Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.abc, color: rowColor1),
                  Text('HOME', style: TextStyle(color: rowColor1)),
                ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.add_shopping_cart, color: rowColor2),
                    Text('PRODUCTS', style: TextStyle(color: rowColor2),),
                  ]
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.settings, color: rowColor3,),
                      Text('SETTINGS', style: TextStyle(color: rowColor3),),
                      ]
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.alarm, color: rowColor4,),
                          Text('TIME', style: TextStyle(color: rowColor4),),
                          ]
                          
              )
            ]
              )
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(label: "HOME", icon: Icon(Icons.abc)),
              BottomNavigationBarItem(label: "OTP", icon: Icon(Icons.abc)),
              BottomNavigationBarItem(label: "TEST",icon: Icon(Icons.abc))

            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.print_disabled),
            onPressed: () => print('Test'),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          backgroundColor:Colors.grey,
          shadowColor: const Color.fromARGB(255, 80, 78, 78),
          elevation: 10,
          title:const Center(
            child: Text('APP TEST'),
          ),
          titleTextStyle: const TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight:FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
