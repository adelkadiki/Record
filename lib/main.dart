import 'package:flutter/material.dart';
import 'package:record/core/routes/app_router.dart';

void main() {
  runApp(const Record());
}

class Record extends StatelessWidget {
  const Record({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
