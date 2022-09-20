import 'package:counter_app/view_model/modelView.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //var vm = ViewModel();
    //final counter = ref.watch(textValue);
    //final model = ref.read(textValue.notifier).state;
    final viewModel = ref.read(ViewModelProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              (viewModel.state as TextState).textValue,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
