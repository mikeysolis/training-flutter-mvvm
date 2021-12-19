import 'package:flutter/material.dart';
import 'package:pmvvm_tests/app/basic_form/basic_form.view.dart';
import 'package:pmvvm_tests/packages.dart';

import 'home_page.vm.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MVVM(
      view: (_, __) => const _HomePageView(),
      viewModel: HomePageVM(),
    );
  }
}

class _HomePageView extends StatelessView<HomePageVM> {
  const _HomePageView({Key? key}) : super(key: key);

  @override
  Widget render(context, vm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: const Text('Basic Form'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => BasicForm.show(context),
              ),
            ],
          );
        },
      ),
    );
  }
}
