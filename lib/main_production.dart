import 'package:test_on_mars/app.dart';
import 'package:test_on_mars/bootstrap.dart';

void main() {
  initialize();

  bootstrap(() => const App());
}
