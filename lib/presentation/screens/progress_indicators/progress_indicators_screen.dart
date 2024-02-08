import 'package:flutter/material.dart';

class ProgressIndicatorsScreen extends StatelessWidget {
  const ProgressIndicatorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress indicators')),
      body: const _ProgressIndicatorsView(),
    );
  }
}

class _ProgressIndicatorsView extends StatelessWidget {
  const _ProgressIndicatorsView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(children: [
        SizedBox(
          height: 30,
        ),
        Text('Circular progress indicator'),
        SizedBox(height: 10),
        CircularProgressIndicator(
          strokeWidth: 2,
          backgroundColor: Colors.black45,
        ),
        SizedBox(
          height: 20,
        ),
        Text('Circular and linear controlled progress indicator'),
        SizedBox(
          height: 10,
        ),
        _ControlledProgressIndicator()
      ]),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(
                const Duration(milliseconds: 300), (value) => (2 * value) / 100)
            .takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final value = snapshot.data ?? 0;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: value,
                  strokeWidth: 2,
                  backgroundColor: Colors.black12,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(child: LinearProgressIndicator(value: value))
              ],
            ),
          );
        });
  }
}
