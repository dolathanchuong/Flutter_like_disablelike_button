import 'package:flutter/material.dart';

class DogName extends StatefulWidget {
  final String name;
  const DogName(this.name, {super.key});

  @override
  State<DogName> createState() => _DogNameState();
}

class _DogNameState extends State<DogName> {
  @override
  Widget build(BuildContext context) {
    return widget.name.contains('liked')
        ? DecoratedBox(
            decoration: const BoxDecoration(color: Colors.pinkAccent),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.name),
            ),
          )
        : DecoratedBox(
            decoration: const BoxDecoration(color: Colors.greenAccent),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.name),
            ),
          );
  }
}
