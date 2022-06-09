import 'package:auth_base_3/features/user/presentation/widget/sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PlainSignIn extends StatelessWidget {
  const PlainSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInButtonum(),
          ],
        ),
      ),
    );
  }
}
