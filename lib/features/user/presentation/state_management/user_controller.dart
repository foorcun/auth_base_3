import 'package:auth_base_3/core/error/failure.dart';
import 'package:auth_base_3/core/error/success.dart';
import 'package:auth_base_3/features/user/data/datasource/auth_strateji.dart';
import 'package:auth_base_3/features/user/domain/entities/BenimUser.dart';
import 'package:auth_base_3/features/user/presentation/state_management/user_service.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  var myUser = BenimUser().obs;

  Future<Either<Failure, Success>> signIn(AuthStrateji authStrateji) async {
    // var userCredential = await AuthGoogleSingInStrateji().signIn();
    // myUser.value.setUserCredential(userCredential);

    try {
      // var userCredential = await AuthGoogleSingInStrateji().signIn();

      var v = await UserService().signIn(authStrateji);

      return Right(SignInSuccess());
    } catch (e) {
      return Left(GeneralSignInFailure());
    }
  }
}
