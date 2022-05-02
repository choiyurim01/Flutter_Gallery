import 'package:flutter/material.dart';

void main() => runApp(const Chips());

class Chips extends StatelessWidget {
  const Chips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chips',
      home: ChipsPage(),
    );
  }
}

class ChipsPage extends StatefulWidget {
  const ChipsPage({Key? key}) : super(key: key);

  @override
  State<ChipsPage> createState() => _ChipsPageState();
}

class _ChipsPageState extends State<ChipsPage>
    with RestorationMixin {
  final RestorableBool isSelectedElevator = RestorableBool(false);
  final RestorableBool isSelectedWasher = RestorableBool(false);
  final RestorableBool isSelectedFireplace = RestorableBool(false);

  @override
  String get restorationId => 'filter_chip_demo';


  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(isSelectedElevator, 'selected_elevator');
    registerForRestoration(isSelectedWasher, 'selected_washer');
    registerForRestoration(isSelectedFireplace, 'selected_fireplace');
  }

  @override
  void dispose() {
    isSelectedElevator.dispose();
    isSelectedWasher.dispose();
    isSelectedFireplace.dispose();
    super.dispose();
  }

  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    const space = SizedBox(height: 24);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chips'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ActionChip(
              label: const Text('설정'),
              onPressed: (){},
              avatar: const Icon(
                Icons.brightness_5,
                color: Colors.black54)
            ),
            space,
            Wrap(
              children: [
                ChoiceChip(
                    label: const Text('작게'),
                  selected: _value == 0,
                  onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? 0 : -1;
                      });
                  },
                ),
                SizedBox(width: 10),
                ChoiceChip(
                  label: const Text('보통'),
                  selected: _value == 1,
                  onSelected: (bool selected) {
                    setState(() {
                      _value = selected ? 1 : -1;
                    });
                  },
                ),
                SizedBox(width: 10),
                ChoiceChip(
                  label: const Text('크게'),
                  selected: _value == 2,
                  onSelected: (bool selected) {
                    setState(() {
                      _value = selected ? 2 : -1;
                    });
                  },
                ),
              ],
            ),
            space,
            Wrap(
              children: [
                FilterChip(
                    label: const Text('엘리베이터'),
                  selected: isSelectedElevator.value,
                  onSelected: (value) {
                      setState(() {
                        isSelectedElevator.value = !isSelectedElevator.value;
                      });
                  },
                ),
                SizedBox(width: 10),
                FilterChip(
                  label: const Text('세탁기'),
                  selected: isSelectedWasher.value,
                  onSelected: (value) {
                    setState(() {
                      isSelectedWasher.value = !isSelectedWasher.value;
                    });
                  },
                ),
                SizedBox(width: 10),
                FilterChip(
                  label: const Text('벽난로'),
                  selected: isSelectedFireplace.value,
                  onSelected: (value) {
                    setState(() {
                      isSelectedFireplace.value = !isSelectedFireplace.value;
                    });
                  },
                ),
              ],
            ),
            space,
            InputChip(
              onPressed: () {},
                onDeleted: () {},
                avatar: const Icon(
                  Icons.directions_bike,
                  size: 20,
                  color: Colors.black54,
                ),
                deleteIconColor: Colors.black54,
                label: const Text('자전거타기'),
            )
          ],
        ),
      ),
    );
  }
}




