import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/home_page.dart';

class WidgetC extends StatelessWidget {
  const WidgetC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('called WidgetC#build');
    // final state = Provider.of<HomePageStateNotifier>(context, listen: false);

    final state = context.read<HomePageStateNotifier>();

    return ElevatedButton(
        onPressed: () {
          state.increment();
        },
        child: const Icon(Icons.add));
  }
}
