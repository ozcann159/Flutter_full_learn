import 'package:flutter/material.dart';
import 'package:flutter_full_learn/image_learn.dart';

class NoteDemosView extends StatelessWidget {
  const NoteDemosView({Key? key}) : super(key: key);

  final title = 'Create your first note';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            Image.asset(ImageItems().appleWithBook, fit: BoxFit.cover),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: Text(
                'Add a note ' * 5,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.normal),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PaddingItems {
  static EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}
