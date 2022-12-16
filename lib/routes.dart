import 'package:iec_group/home_page/home_page.dart';
import 'package:iec_group/login_page/screen/login_page.dart';
import 'package:iec_group/login_page/screen/login_page.dart';
// import 'package:iec_group/qr_page/qr_scanner_page.dart';
import 'package:iec_group/splash_screen/splash_screen.dart';

class Routes {
  static dynamic routes = {
    LoginPage.routeName: (context) => LoginPage(),
    HomePage.routeName: (context) => HomePage(),
    SplashScreen.routeName: (context) => SplashScreen(),
    // QRViewPage.routeName: (context) => QRViewPage(),
  };
}
