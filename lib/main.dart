import 'package:feedback/feedback.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/bloc/bloc/feed_back_test_bloc.dart';
import 'package:test/screen2.dart';

void main() {
  runApp(
    const BetterFeedback(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const Screed2()));
                },
                child: const Text("Screen 1")),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await showDialog<void>(
            context: context,
            barrierColor: Colors.black.withOpacity(0.8),
            builder: (BuildContext context) {
              return AlertDialog(
                insetPadding: const EdgeInsets.all(20),
                content: BlocBuilder<FeedBackTestBloc, FeedBackTestState>(
                  builder: (context, state) {
                    return const SizedBox();
                  },
                ),
              );
            },
          );
        },
        label: const Text("Bloc test"),
      ),
    );
  }
}
