import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Button());

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Button',
      home: ButtonPage(),
    );
  }
}

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: 
      SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text('텍스트 버튼'),
              ),
              const SizedBox(height: 12),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text('텍스트 버튼'),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text('돌출 버튼'),
              ),
              const SizedBox(height: 12),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add, size: 18),
                  label: const Text('돌출 버튼'),
              ),
              const SizedBox(height: 12),
              OutlineButton(onPressed: () {},
                child: const Text('윤곽 버튼'),
              ),
              const SizedBox(height: 12),
              OutlineButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add, size: 18),
                  label: const Text('윤곽버튼')
              ),
              const SizedBox(height: 12),
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 12),
              FloatingActionButton.extended(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: Text('만들기'),
              ),
              const SizedBox(height: 12),
              CupertinoButton(
                  child: Text('ios 스타일버튼'),
                  onPressed: (){},
              ),
              const SizedBox(height: 12),
              CupertinoButton.filled(
                  child: Text('배경포함'),
                  onPressed: (){},
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

