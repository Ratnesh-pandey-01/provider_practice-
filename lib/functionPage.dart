import 'package:flutter/material.dart';
import 'package:flutter_application_8/provider.dart';
import 'package:provider/provider.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Function Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                Provider.of<CounterProvider>(context, listen: false)
                    .incrementCount();
              },
              child: Icon(
                Icons.add,
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
