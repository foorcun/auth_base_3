import 'package:auth_base_3/core/error/success.dart';
import 'package:auth_base_3/features/user/data/datasource/auth_strateji.dart';
import 'package:auth_base_3/features/user/domain/entities/BenimUser.dart';
import 'package:auth_base_3/core/error/failure.dart';
import 'package:auth_base_3/features/user/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<Either<Failure, BenimUser>> signIn(AuthStrateji authStrateji) {
    // TODO: implement signIn
    return authStrateji.signIn(authStrateji);
  }

  @override
  Future<Either<Failure, Success>> signOut(BenimUser benimUser) {
    // TODO: implement signOut
    return benimUser.authStrateji!.signOut();
  }
}
