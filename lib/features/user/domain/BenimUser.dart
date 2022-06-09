import 'package:auth_base_3/features/user/data/datasource/auth_strateji.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

// class BenimUser extends User {
class BenimUser {
  Rx<User?>? user;
  AuthStrateji? authStrateji;

  UserCredential? userCredential;

  // User({
  //   required this.userName,
  // });

  BenimUser();

  BenimUser.withCredential(UserCredential userCredential) {
    userCredential = userCredential;
  }

  BenimUser.withAuthStrateji(AuthStrateji authStrateji) {
    this.authStrateji = authStrateji;
  }

  userSignIn() async {
    userCredential = await authStrateji!.signIn();
  }

  // bringThisUser() {
  //   return this;
  // }

  // get authStrateji => _authStrateji;

  String getUid() {
    return userCredential!.user!.uid;
  }

  String? getEmail() {
    return userCredential!.user!.email;
  }

  Future<void> signOut() async {
    await authStrateji!.signOut();
  }

  setUserCredential(UserCredential userCredential) {
    this.userCredential = userCredential;
  }

  setAuthStrateji(AuthStrateji authStrateji) {
    this.authStrateji = authStrateji;
  }
}
