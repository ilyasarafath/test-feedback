import 'package:flutter/material.dart';

class Screed2 extends StatelessWidget {
  const Screed2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 2"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            _showMyDialog(context);
            // await Future.delayed(const Duration(seconds: 3));
            // Navigator.pop(context);
          },
          child: const Text("Show dialogue"),
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('AlertDialog Title'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Please try to click device back button'),
              Text('observe the result'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
