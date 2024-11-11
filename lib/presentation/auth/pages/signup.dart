import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotifyclone/common/widgets/appbar/app_bar.dart';
import 'package:spotifyclone/common/widgets/button/basic_app_button.dart';
import 'package:spotifyclone/core/config/assets/app_vector.dart';
import 'package:spotifyclone/data/models/auth/create_user_req.dart';
import 'package:spotifyclone/domain/usecases/auth/signup.dart';
import 'package:spotifyclone/presentation/auth/pages/signin.dart';
import 'package:spotifyclone/presentation/root/pages/root.dart';
import 'package:spotifyclone/service_locator.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  final TextEditingController _fullname = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signinText(context),
      appBar: BasicAppbar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
          width: 40,
        ),
      ),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _registerText(),
              const SizedBox(height: 51),
              _fullNameField(context),
              const SizedBox(height: 20),
              _emailField(context),
              const SizedBox(height: 20),
              _passwordField(context),
              const SizedBox(height: 20),
              BasicAppButton(
                  onPressed: () async {
                    var result = await sl<SignupCase>().call(
                        params: CreateUserReq(
                            fullName: _fullname.text.toString(),
                            email: _email.text.toString(),
                            password: _password.text.toString()));
                    result.fold((l) {
                      var snackbar = SnackBar(content: Text(l));
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }, (r) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const RootPage()),
                          (route) => false);
                    });
                  },
                  title: "Create Account")
            ],
          ),
        ),
      ),
    );
  }

  Widget _registerText() {
    return const Text(
      "Register",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      textAlign: TextAlign.center,
    );
  }

  Widget _fullNameField(BuildContext context) {
    return TextField(
      controller: _fullname,
      decoration: const InputDecoration(hintText: "Full Name")
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      controller: _email,
      decoration: const InputDecoration(hintText: "Enter Email")
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _password,
      decoration: const InputDecoration(hintText: "Password")
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _signinText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Do you have an account? ",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>  SignInPage()));
              },
              child: const Text("Sign In"))
        ],
      ),
    );
  }
}
