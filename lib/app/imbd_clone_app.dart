import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:imbd_clone/app/navigation/app_router_config.dart';
import 'package:imbd_localization/strings.g.dart';

class ImbdCloneApp extends StatefulWidget {
  const ImbdCloneApp({super.key});

  @override
  State<ImbdCloneApp> createState() => _ImbdCloneAppState();
}

class _ImbdCloneAppState extends State<ImbdCloneApp> {
  final _appRouterConfig = AppRouterConfig();

  @override
  void dispose() {
    _appRouterConfig.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouterConfig.router,
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
