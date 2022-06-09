import 'package:auth_base_3/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class SignInUser<Type> {
  Future<Either<Failure, Type>> call();
}
