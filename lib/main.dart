import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:toku/screens/home_page.dart';


Future<void> main() async {
  runZonedGuarded(() async {
    await SentryFlutter.init(
      (options) {
        options.dsn = 'https://1a7b18a8a4cdcf9c56c51942d9f55b05@o4506191637184512.ingest.sentry.io/4506229951496192';
      },
    );

    runApp(TokuApp());
  }, (exception, stackTrace) async {
    await Sentry.captureException(exception, stackTrace: stackTrace);
  });
}


class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }
}