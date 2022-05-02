import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const dialog());

class dialog extends StatelessWidget {
  const dialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '알림상자',
      debugShowCheckedModeBanner: false,
      home: dialogPage(),
    );
  }
}

class dialogPage extends StatefulWidget {
  const dialogPage({Key? key}) : super(key: key);

  @override
  State<dialogPage> createState() => _dialogPageState();
}

class _dialogPageState extends State<dialogPage> {
  @override

  var space = SizedBox(height: 30);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('알림상자'),
      ),

      body: Center(
        //mainAxisSize: MainAxisSize.min,
        child: Column(
          children: [
            space,
            ElevatedButton(
              child: Text('테스트1'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('제목'),
                        titleTextStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                        backgroundColor: Colors.grey[100],
                        actions: [
                          ElevatedButton(
                              onPressed: () {},
                              child: Text('확인')
                          ),
                          ElevatedButton(
                              onPressed: () {}, child: Text('취소'))
                        ],
                        content: Text('내용입니다.'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      );
                    });
              },
            ),
            // space,
            // ElevatedButton(
            //   child: const Text('테스트2'),
            //   onPressed: () {
            //     CupertinoAlertDialog(
            //       title: const Text('제목'),
            //       content: const Text('내용입니다.'),
            //       actions: [
            //         CupertinoDialogAction(
            //             child: const Text('이전'),
            //           onPressed: () {},
            //         ),
            //         CupertinoDialogAction(
            //           child: const Text('다음'),
            //           onPressed: () {},
            //         )
            //       ],
            //     );
            //   },
            // ),
          ],
        ),
      )
    );
  }
}

