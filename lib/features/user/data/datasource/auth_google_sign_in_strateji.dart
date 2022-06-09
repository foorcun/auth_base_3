import 'package:auth_base_3/core/error/failure.dart';
import 'package:auth_base_3/features/user/data/datasource/auth_strateji.dart';
import 'package:auth_base_3/features/user/domain/entities/BenimUser.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthGoogleSingInStrateji extends AuthStrateji {
  @override
  Future<Map<String, dynamic>?> girisSayisi(
      UserCredential girilenUserCredential) {
    // TODO: implement girisSayisi
    throw UnimplementedError();
  }

  // @override
  // Future<void> girisSayisiArttir(UserCredential girilenUserCredential) {
  //   // TODO: implement girisSayisiArttir
  //   throw UnimplementedError();
  // }

  @override
  Future<void> signOut() async {
    // TODO: implement signOut
    await firebaseAuth.signOut();
  }

  // @override
  // Future<UserCredential> signIna() async {
  //   print("Future<UserCredential> signIn()");
  //   // final userC = await firebaseAuth.signInAnonymously();

  //   // await girisSayisiArttir(userC);

  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  //   final GoogleSignInAuthentication googleAuth =
  //       await googleUser.authentication;

  //   // final GoogleAuthCredential credential = GoogleAuthProvider.credential(
  //   //   accessToken: googleAuth.accessToken,
  //   //   idToken: googleAuth.idToken,
  //   // );

  //   final GoogleAuthCredential credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth.accessToken,
  //     idToken: googleAuth.idToken,
  //   );

  //   return await FirebaseAuth.instance.signInWithCredential(credential);
  //   // return userC;
  // }

  @override
  Future<Either<Failure, BenimUser>> signIn() async {
    // ignore: avoid_print
    print("Future<UserCredential> signIn()");

    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      print(googleUser);

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      print("GoogleSignInAuthentication " + googleAuth.toString());
      // Create a new credential
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      // var userCred =
      //     await FirebaseAuth.instance.signInWithCredential(credential);

      // return Right(BenimUser.withCredential(userCred));
      return Right(BenimUser());
    } catch (e) {
      return Left(GeneralSignInFailure());
    }
  }
}
