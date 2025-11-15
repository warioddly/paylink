import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:paylink/features/app/app_view.dart';

void $runner() {
  print('[PAYLINK] Starting app');
  runApp(const AppView());
}

void $onCrash(Object error, StackTrace stackTrace) {
  print('[PAYLINK] $error \n $stackTrace');
}

void main() {
  runZonedGuarded($runner, $onCrash);
}
