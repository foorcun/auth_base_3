import 'package:auth_base_3/core/error/failure.dart';
import 'package:auth_base_3/core/usecases/sign_in_usecase.dart';
import 'package:auth_base_3/features/user/domain/entities/BenimUser.dart';
import 'package:auth_base_3/features/user/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

class SignInUserUsecase implements SignInUser<BenimUser> {
  final UserRepository repository;
  SignInUserUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, BenimUser>> call() {
    // TODO: implement call
    return repository.signIn();
  }
}
