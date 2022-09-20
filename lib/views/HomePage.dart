import 'package:counter_app/gen/assets.gen.dart';
import 'package:counter_app/view_model/modelView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:go_router/go_router.dart';

//final textValue = StateProvider.autoDispose((ref) => text);
String text = '';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(ViewModelProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(Assets.images.image.path),
            TextFormField(
              onChanged: (value) {
                viewModel.updateText(text);
              },
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/SecondScreen');
              },
              child: const Text('Transfer Data'),
            ),
          ],
        ),
      ),
    );
  }
}
