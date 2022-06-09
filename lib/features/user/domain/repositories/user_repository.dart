import 'package:auth_base_3/core/error/failure.dart';
import 'package:auth_base_3/core/error/success.dart';
import 'package:auth_base_3/features/user/data/datasource/auth_strateji.dart';
import 'package:auth_base_3/features/user/domain/entities/BenimUser.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepository {
  Future<Either<Failure, BenimUser>> signIn(AuthStrateji authStrateji);
  Future<Either<Failure, Success>> signOut(BenimUser benimUser);
}
