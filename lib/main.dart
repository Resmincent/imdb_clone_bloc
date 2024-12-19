import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:imbd_clone/app/imbd_clone_app.dart';
import 'package:imbd_clone/core/di/di_container.dart';
import 'package:imbd_localization/strings.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await initDi();
  runApp(
    TranslationProvider(
      child: const ImbdCloneApp(),
    ),
  );
}
