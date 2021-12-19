import 'package:flutter/material.dart';
import 'package:pmvvm_tests/packages.dart';

import 'basic_form.vm.dart';

class BasicForm extends StatelessWidget {
  const BasicForm({Key? key}) : super(key: key);

  static Future<void> show(BuildContext context) async {
    await Navigator.of(context, rootNavigator: true).push(
      MaterialPageRoute(
        builder: (context) => const BasicForm(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MVVM(
      view: (_, __) => const _BasicFormView(),
      viewModel: BasicFormVM(),
    );
  }
}

class _BasicFormView extends StatelessView<BasicFormVM> {
  const _BasicFormView({Key? key}) : super(key: key);

  @override
  Widget render(context, vm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Form'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 40.0),
          Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter your name',
                    hintStyle: TextStyle(color: Colors.black38),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(color: Colors.black38),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
