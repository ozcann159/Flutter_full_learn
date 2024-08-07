import 'package:flutter/material.dart';

class ColorDemosView2 extends StatefulWidget {
  const ColorDemosView2({Key? key}) : super(key: key);

  @override
  _ColorDemosView2State createState() => _ColorDemosView2State();
}

class _ColorDemosView2State extends State<ColorDemosView2> {
  Color _backgroundColor = Colors.transparent;

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
            if (value == 0) {
              changeBackgroundColor(Colors.pink);
            } else if (value == 1) {
              changeBackgroundColor(Colors.orange);
            }
          },
          items: const [
            BottomNavigationBarItem(
                label: 'Pink', icon: _ContainerColor(color: Colors.pink)),
            BottomNavigationBarItem(
              label: 'Orange',
              icon: _ContainerColor(
                color: Colors.orange,
              ),
            ),
          ]),
    );
  }
}

class _ContainerColor extends StatelessWidget {
  const _ContainerColor({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      color: color,
    );
  }
}
