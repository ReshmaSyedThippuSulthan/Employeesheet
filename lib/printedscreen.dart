import 'package:flutter/material.dart';

class Printed_Sheet extends StatefulWidget {
  const Printed_Sheet({super.key});

  @override
  State<Printed_Sheet> createState() => _Printed_SheetState();
}

class _Printed_SheetState extends State<Printed_Sheet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Printrd Screen"),
        ),
        body: Center(),
      ),
    );
  }
}
