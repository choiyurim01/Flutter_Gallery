import 'package:flutter/material.dart';

void main() => runApp(const Menu());

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Memu',
      debugShowCheckedModeBanner: false,
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  var seletedItem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('컨텍스트 메뉴'),
        actions: [
          PopupMenuButton(onSelected: (value) {
            setState( () { seletedItem = value.toString(); } );
          },
            itemBuilder: (BuildContext) {
            return const [
              PopupMenuItem(
                  child: Text('활성화'),
                value:'/활성화'),
              PopupMenuItem(
                enabled: false,
                  child: Text('비활성화'),
                  value:'/비활성화'),
            ];
          },
          )
        ],)
    );
  }
}
