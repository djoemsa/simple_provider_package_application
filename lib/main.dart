import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_package/models/simple_model.dart';
import 'package:provider_package/screens/change_notifier.dart';
import 'package:provider_package/screens/home_page.dart';
import 'package:provider_package/screens/provider_example.dart';
import 'package:provider_package/screens/proxy_provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        Provider<SimpleModel1>(create: (context) => SimpleModel1()),
        ChangeNotifierProvider<SimpleModel3>(
            create: (context) => SimpleModel3()),
        ChangeNotifierProvider<SimpleModel2>(
            create: (context) => SimpleModel2()),
        ProxyProvider<SimpleModel2, SimpleModelProxy>(
          update: (context, value, previous) => SimpleModelProxy(value),
        )
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/provider': (context) => ProviderPage(),
        '/changenotifier': (context) => ChangeNotifierPage(),
        '/proxyprovider': (context) => ProxyProviderPage()
      },
    );
  }
}
