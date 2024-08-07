import 'package:flutter/material.dart';

class CustomComponent extends StatelessWidget {
  const CustomComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String title = 'Food';
    var white = Colors.white;
    var redColor = Colors.red;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: redColor, shape: StadiumBorder()),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: white, fontWeight: FontWeight.bold),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
