import 'package:auth_base_3/core/error/failure.dart';
import 'package:auth_base_3/features/user/domain/entities/BenimUser.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepository {
  Future<Either<Failure, BenimUser>> signIn();
}
