import 'package:iec_group/api_calls/logout/store/logout_store.dart';
import 'package:iec_group/login_page/store/login_store.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> multiProviders = [
  Provider(
    create: (_) => LoginStore(),
  ),
  Provider(
    create: (_) => LogoutStore(),
  ),
];