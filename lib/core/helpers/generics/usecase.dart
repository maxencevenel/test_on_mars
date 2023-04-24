
// ignore_for_file: one_member_abstracts

import 'package:multiple_result/multiple_result.dart';
import 'package:test_on_mars/core/errors/failure.dart';


/// [R] => Data output. [P] => Data Input. [Failure] when Error
abstract class UseCase<R, P> {
  Future<Result<R, Failure>> call({P? param});
}
