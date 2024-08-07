import 'package:flutter/material.dart';

class IndicatorLearn extends StatefulWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  _IndicatorLearnState createState() => _IndicatorLearnState();
}

class _IndicatorLearnState extends State<IndicatorLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Center(child: CenterCircularProgress())],
      ),
      body: LinearProgressIndicator(),
    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: Colors.brown,
    );
  }
}
