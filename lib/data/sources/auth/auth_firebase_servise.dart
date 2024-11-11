import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotifyclone/data/models/auth/create_user_req.dart';
import 'package:spotifyclone/data/models/auth/signin_user_req.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(CreateUserReq createUserReq);
  Future<Either> signin(SigninUserReq signinUserReq);
}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  Future<Either> signin(SigninUserReq signinUserReq) async{   
 try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: signinUserReq.email, 
          password: signinUserReq.password);

      return const Right('sigin was Successful');
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == "invalid-email") {
        message = 'The email provided was invalid';
      } else if (e.code == "invalid-credential") {
        message = 'wrong password';
      }

      return Left(message);
    }  
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: createUserReq.email, password: createUserReq.password);

      return Right('signin was Successful');
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == "weak-password") {
        message = 'The password provided is too weak';
      } else if (e.code == "email-already-in-use") {
        message = 'An account already exixt withthat email.';
      }

      return Left(message);
    }
  }
}
