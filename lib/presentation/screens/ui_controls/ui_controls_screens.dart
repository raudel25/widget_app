import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls + Tiles')),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum _Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  _Transportation selectedTransportation = _Transportation.car;

  bool checked1 = false;
  bool checked2 = false;
  bool checked3 = false;

  String transportationToString() {
    switch (selectedTransportation) {
      case _Transportation.car:
        return 'Travel in car';
      case _Transportation.boat:
        return 'Travel in boat';
      case _Transportation.plane:
        return 'Travel in plane';
      case _Transportation.submarine:
        return 'Travel in submarine';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Developer mode'),
            subtitle: const Text('Additional controls'),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = value;
                })),
        ExpansionTile(
          title: const Text('Transportation vehicle'),
          subtitle: Text(transportationToString()),
          children: [
            RadioListTile(
                title: const Text('By car'),
                subtitle: const Text('Travel in car'),
                value: selectedTransportation,
                groupValue: _Transportation.car,
                onChanged: (value) => setState(() {
                      selectedTransportation = _Transportation.car;
                    })),
            RadioListTile(
                title: const Text('By plane'),
                subtitle: const Text('Travel in plane'),
                value: selectedTransportation,
                groupValue: _Transportation.plane,
                onChanged: (value) => setState(() {
                      selectedTransportation = _Transportation.plane;
                    })),
            RadioListTile(
                title: const Text('By boat'),
                subtitle: const Text('Travel in boat'),
                value: selectedTransportation,
                groupValue: _Transportation.boat,
                onChanged: (value) => setState(() {
                      selectedTransportation = _Transportation.boat;
                    })),
            RadioListTile(
                title: const Text('By submarine'),
                subtitle: const Text('Travel in submarine'),
                value: selectedTransportation,
                groupValue: _Transportation.submarine,
                onChanged: (value) => setState(() {
                      selectedTransportation = _Transportation.submarine;
                    }))
          ],
        ),
        CheckboxListTile(
            title: const Text('Check 1'),
            value: checked1,
            onChanged: (value) => setState(() {
                  checked1 = !checked1;
                })),
        CheckboxListTile(
            title: const Text('Check 2'),
            value: checked2,
            onChanged: (value) => setState(() {
                  checked2 = !checked2;
                })),
        CheckboxListTile(
            title: const Text('Check 3'),
            value: checked3,
            onChanged: (value) => setState(() {
                  checked3 = !checked3;
                }))
      ],
    );
  }
}
