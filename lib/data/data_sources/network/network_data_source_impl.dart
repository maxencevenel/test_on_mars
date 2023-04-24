import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:test_on_mars/data/data_sources/network/network_data_source.dart';

class NetworkDataSourceImpl implements NetworkDataSource {
  const NetworkDataSourceImpl({
    required InternetConnectionChecker internetConnectionChecker,
  }) : _internetConnectionChecker = internetConnectionChecker;

  final InternetConnectionChecker _internetConnectionChecker;

  @override
  Future<bool> get hasConnection => _internetConnectionChecker.hasConnection;
}
