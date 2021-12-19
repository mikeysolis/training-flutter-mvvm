import 'package:flutter/material.dart';
import 'package:pmvvm_tests/packages.dart';

import 'app.vm.dart';
import 'home_page/home_page.view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MVVM<AppVM>(
      view: (_, __) => const _AppView(),
      viewModel: AppVM(),
    );
  }
}

class _AppView extends StatelessView<AppVM> {
  const _AppView({Key? key}) : super(key: key);

  @override
  Widget render(context, vm) {
    return const HomePage();
  }
}
