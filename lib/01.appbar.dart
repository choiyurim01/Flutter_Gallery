import 'package:flutter/material.dart';

void main() => runApp(Appbar());

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      home: AppbarPage(),
    );
  }
}

class AppbarPage extends StatelessWidget {
  const AppbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text('App bar'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
              onPressed: () {}
          ),
          IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {}
          ),
          PopupMenuButton<Text>
            (itemBuilder: (context) {
              return [
                const PopupMenuItem(
                    child: Text(
                        '첫번째'
                    ),
                ),
                const PopupMenuItem(
                  child: Text(
                      '두번째'
                  ),
                ),
                const PopupMenuItem(
                  child: Text(
                      '세번째'
                  ),
                ),
              ];
              },
          ),
        ],
      ),
    );
  }
}
