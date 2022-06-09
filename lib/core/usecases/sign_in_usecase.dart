import 'package:auth_base_3/core/error/failure.dart';
import 'package:auth_base_3/features/user/data/datasource/auth_strateji.dart';
import 'package:dartz/dartz.dart';

abstract class SignInUser<Type> {
  Future<Either<Failure, Type>> call(AuthStrateji authStrateji);
}
