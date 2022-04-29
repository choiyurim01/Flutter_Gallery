import 'package:flutter/material.dart';

void main() => runApp(const SelectControl());

class SelectControl extends StatelessWidget {
  const SelectControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '선택컨트롤',
        home: SelectControlPage(),
    );
  }
}

enum Fruit {Apple, Grapes, Pear, Lemon }

class SelectControlPage extends StatefulWidget {
  const SelectControlPage({Key? key}) : super(key: key);

  @override
  State<SelectControlPage> createState() => _SelectControlPageState();
}

class _SelectControlPageState extends State<SelectControlPage> {
  bool isChecked = false;
  bool isChecked2 = false;
  Fruit? _fruit = Fruit.Apple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('선택 컨트롤'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    if(value != null) {isChecked = value;}
                  });
                }),
            Switch(
                value: isChecked2,
                onChanged: (value) {
                  setState(() {isChecked2 = value;});
                }),
            ListTile(
              title: const Text('Apple'),
              leading: Radio<Fruit>(
                value: Fruit.Apple,
                groupValue: _fruit,
                onChanged: (Fruit? value) {
                  setState(() {
                    _fruit = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Grapes'),
              leading: Radio<Fruit>(
                value: Fruit.Grapes,
                groupValue: _fruit,
                onChanged: (Fruit? value) {
                  setState(() {
                    _fruit = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Pear'),
              leading: Radio<Fruit>(
                value: Fruit.Pear,
                groupValue: _fruit,
                onChanged: (Fruit? value) {
                  setState(() {
                    _fruit = value;
                  });
                },
              ),
            ),
            Semantics(
              button: true,
              enabled: true,
              child: GestureDetector(
                  onTap: () {
                    print('Clicked!');
                  }, child: Text('Click Me!', style: TextStyle(fontSize: 56))
              ),
            ),
            ListTile(
              title: const Text('Lemon'),
              leading: Radio<Fruit>(
                value: Fruit.Lemon,
                groupValue: _fruit,
                onChanged: (Fruit? value) {
                  setState(() {
                    _fruit = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}
