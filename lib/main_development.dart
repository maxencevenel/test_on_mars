import 'package:test_on_mars/app.dart';
import 'package:test_on_mars/bootstrap.dart';


Future<void> main() async {
  await initialize();

  await bootstrap(() => const App());
}
