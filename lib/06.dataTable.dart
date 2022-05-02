import 'package:flutter/material.dart';

void main() => runApp(const Table());

class Table extends StatelessWidget {
  const Table({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
          appBar: AppBar(title: const Text((_title))),
          body: const Tablepage()
      ),
    );
  }
}

class Tablepage extends StatelessWidget {
  const Tablepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                  label: Text('이름')
              ),
              DataColumn(
                  label: Text('나이')
              ),
              DataColumn(
                  label: Text('직업')
              ),
            ],
            rows: const <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('최유림')),
                  DataCell(Text('24')),
                  DataCell(Text('퍼블리셔')),
                ],
              ),
              DataRow(
                  cells: <DataCell>[
                    DataCell(Text('홍길동')),
                    DataCell(Text('20')),
                    DataCell(Text('회사원'))
                  ]
              )
            ]
        )
    );
  }
}
