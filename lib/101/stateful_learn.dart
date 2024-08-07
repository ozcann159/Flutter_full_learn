import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/counter_hello_button.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({Key? key}) : super(key: key);

  @override
  _StatefulLearnState createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int countValue = 0;

  void incrementValue() {
    setState(() {
      countValue = countValue + 1;
    });
  }

  void deincrementValue() {
    setState(() {
      countValue = countValue - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              countValue.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Placeholder(),
          CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print('burda');
    return FloatingActionButton(
      onPressed: () {
        incrementValue();
      },
      child: Icon(Icons.add),
    );
  }

  Padding deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          deincrementValue();
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
