import 'package:auth_base_3/core/error/failure.dart';
import 'package:auth_base_3/features/user/data/datasource/auth_google_sign_in_strateji.dart';
import 'package:auth_base_3/features/user/data/datasource/auth_strateji.dart';
import 'package:auth_base_3/features/user/domain/entities/BenimUser.dart';
import 'package:dartz/dartz.dart';

import '/injection_container.dart' as di;
import 'package:auth_base_3/features/user/domain/usecases/sign_in_user_usecase.dart';

class UserService {
  Future<Either<Failure, BenimUser>> signIn(AuthStrateji authStrateji) async {
    print('UserService');
    return di.sl<SignInUserUsecase>().call(authStrateji);
  }
}
