import 'package:flutter/material.dart';

abstract class ViewModel extends ChangeNotifier {
  static of<T extends ViewModel>(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_ViewModel<T>>()!.notifier;
  }
}

class _ViewModel<T extends ViewModel> extends InheritedNotifier<T> {
  const _ViewModel({
    required super.notifier,
    required super.child,
  });
}

class ViewModelProvider extends StatelessWidget {
  const ViewModelProvider({super.key, required this.viewModel, required this.child});

  final ViewModel viewModel;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return _ViewModel(
      notifier: viewModel,
      child: child,
    );
  }
}
