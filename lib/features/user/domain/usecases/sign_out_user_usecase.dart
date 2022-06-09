import 'package:auth_base_3/core/error/failure.dart';
import 'package:auth_base_3/core/error/success.dart';
import 'package:auth_base_3/core/usecases/sign_out_usecase.dart';
import 'package:auth_base_3/features/user/domain/entities/BenimUser.dart';
import 'package:auth_base_3/features/user/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

class SignOutUserUsecase implements SignOutUsecase<Success> {
  final UserRepository repository;
  SignOutUserUsecase({
    required this.repository,
  });
  @override
  Future<Either<Failure, Success>> call(BenimUser benimUser) {
    // TODO: implement call
    return repository.signOut(benimUser);
  }
}
