import 'package:flutter/material.dart';
import 'package:record/core/database/cache/cache_processor.dart';
import 'package:record/core/routes/app_router.dart';
import 'package:record/core/services/service_locator.dart';
import 'package:record/core/utls/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocator();
  await getIt<CacheProcessor>().init();
  runApp(const Record());
}

class Record extends StatelessWidget {
  const Record({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
      routerConfig: router,
    );
  }
}
