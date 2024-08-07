import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FittedBox(
            child: Text(
              "Merhaba",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          Divider(),
          SizedBox(
              height: 300,
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    color: Colors.green,
                    width: 100,
                  ),
                  Container(
                    color: Colors.grey,
                    width: 100,
                  ),
                  Container(
                    color: Colors.green,
                    width: 100,
                  ),
                  Container(
                    color: Colors.grey,
                    width: 100,
                  ),
                  Container(
                    color: Colors.green,
                    width: 100,
                  ),
                  Container(
                    color: Colors.grey,
                    width: 100,
                  ),
                  Container(
                    color: Colors.green,
                    width: 100,
                  ),
                  Container(
                    color: Colors.grey,
                    width: 100,
                  ),
                ],
              )),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.close),
          )
        ],
      ),
    );
  }
}
