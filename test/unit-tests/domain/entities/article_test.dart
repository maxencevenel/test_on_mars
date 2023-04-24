import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:test_on_mars/domain/entities/article.dart';

import '../../helpers/data_mocks.dart';

void main() {
  test('FromJson should return Article', () {
    final result =
        Article.fromJson(jsonDecode(article1Json) as Map<String, dynamic>);
    expect(result, article1);
  });
}
