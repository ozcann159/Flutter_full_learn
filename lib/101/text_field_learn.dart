import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  _TextFieldLearnState createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        maxLength: 20,
        buildCounter: (BuildContext,
                {required currentLength,
                required isFocused,
                required maxLength}) =>
            Container(
          height: 10,
          width: 40,
          color: Colors.green,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(),
          labelText: 'Email',
          fillColor: Colors.white,
          filled: true,
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
