//Bir ekran olacak
//Bu ekranda 3 button ve bunlara basınca renk değişimi olacak
// Seçili olan button selected icon

import 'package:flutter/material.dart';

class ColorDemosView extends StatefulWidget {
  const ColorDemosView({Key? key, required this.initialColor}) : super(key: key);
  final Color? initialColor;

  @override
  _ColorDemosViewState createState() => _ColorDemosViewState();
}

class _ColorDemosViewState extends State<ColorDemosView> {
  Color? _backgroundColor = Colors.transparent;

  @override
  void initState() {
   _backgroundColor = widget.initialColor ?? Colors.transparent;
    super.initState();
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value == _MyColors.red.index) {
              changeBackgroundColor(Colors.red);
            } else if (value == _MyColors.yellow.index) {
              changeBackgroundColor(Colors.yellow);
            } else if (value == _MyColors.blue.index) {
              changeBackgroundColor(Colors.blue);
            } else {}
          },
          items: const [
            BottomNavigationBarItem(
                icon: _ColorContainer(
                  color: Colors.red,
                ),
                label: 'red'),
            BottomNavigationBarItem(
                icon: _ColorContainer(color: Colors.yellow), label: 'Yellow'),
            BottomNavigationBarItem(
                icon: _ColorContainer(color: Colors.blue), label: 'Blue'),
          ]),
    );
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
