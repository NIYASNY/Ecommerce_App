import 'package:flutter/material.dart';

class Sectiontitle extends StatelessWidget {
  final String title;
  const Sectiontitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24 , left: 20),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(title, style: Theme.of(context).textTheme.headline6),
      ),
    );
  }
}
