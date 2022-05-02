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
        title: const Text('섹션으로 구분된 메뉴'),
        actions: [
          PopupMenuButton(onSelected: (value) {
            setState( () { seletedItem = value.toString(); } );
          },
            itemBuilder: (context) {
            return <PopupMenuEntry<String>>[
              PopupMenuItem(
                  child:ListTile(
                    leading: Icon(Icons.remove_red_eye_sharp),
                    title: Text('미리보기'),
                  ),
                value:'/미리보기'),
              PopupMenuItem(
                  child:ListTile(
                    leading: Icon(Icons.person_add),
                    title: Text('공유'),
                  ),
                  value:'/공유'),
              PopupMenuItem(
                  child:ListTile(
                    leading: Icon(Icons.link),
                    title: Text('링크생성'),
                  ),
                  value:'/링크생성'),
              PopupMenuDivider(),
              PopupMenuItem(
                  child:ListTile(
                    leading: Icon(Icons.delete),
                    title: Text('삭제'),
                  ),
                  value:'/삭제'),
            ];
          },
          )
        ],)
    );
  }
}
