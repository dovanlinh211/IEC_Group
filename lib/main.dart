import 'package:flutter/material.dart';
import 'package:iec_group/login_page/store/login_store.dart';
import 'package:iec_group/provider_list.dart';
import 'package:iec_group/routes.dart';
import 'package:iec_group/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

LoginStore store = LoginStore();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await store.autoLogin();
  runApp(MyApp(autoLogin: store.autoLoginStatus));
}

class MyApp extends StatefulWidget {
  final bool autoLogin;
  const MyApp({ Key? key, required this.autoLogin}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: multiProviders,
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'IEC Event',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            routes: Routes.routes,
            initialRoute: SplashScreen.routeName,
          );
        }
      ),
    );
  }
}
