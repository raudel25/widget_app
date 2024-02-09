import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarsScreen extends StatelessWidget {
  const SnackbarsScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('Hello world'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    ));
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: ((context) => AlertDialog(
              title: const Text('This is a dialog'),
              content: const Text(
                  'Eu culpa do culpa reprehenderit veniam non. Reprehenderit culpa dolore exercitation minim. Incididunt sint velit sint sint proident veniam eu incididunt et duis anim aliqua veniam labore. Incididunt in ex velit commodo consectetur et proident sit. Et nulla pariatur ullamco laborum veniam id ut do Lorem sit duis sunt anim labore.'),
              actions: [
                TextButton(
                    onPressed: () => context.pop(), child: const Text('Cancel'))
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars and dialogs')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Officia velit eiusmod ipsum mollit. Voluptate dolore elit cillum sunt proident enim elit exercitation ad elit. Occaecat nulla deserunt sint duis id proident. Id aliqua aliqua aliqua esse commodo id commodo. Minim dolore duis id aliquip.')
                ]);
              },
              child: const Text('Licenses')),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Show dialog'))
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        label: const Text('Show snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
