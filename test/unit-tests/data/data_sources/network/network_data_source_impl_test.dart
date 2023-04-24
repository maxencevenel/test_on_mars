import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_on_mars/data/data_sources/network/network_data_source_impl.dart';

import 'mock_internet_connection_checker.dart';

void main() {

  late MockInternetConnectionChecker mockInternetConnectionChecker;
  late NetworkDataSourceImpl networkDataSourceImpl;

  setUp(() {
    mockInternetConnectionChecker = MockInternetConnectionChecker();
    networkDataSourceImpl = NetworkDataSourceImpl(
      internetConnectionChecker: mockInternetConnectionChecker,
    );
  });

  test('Should return true wken online', () async {
    when(() => mockInternetConnectionChecker.hasConnection).thenAnswer(
          (_) async => true,
    );

    final result = await networkDataSourceImpl.hasConnection;

    expect(result, true);
  });

  test('Should return false when offline', () async {
    when(() => mockInternetConnectionChecker.hasConnection).thenAnswer(
          (_) async => false,
    );
    final result = await networkDataSourceImpl.hasConnection;

    expect(result, false);
  });
}
