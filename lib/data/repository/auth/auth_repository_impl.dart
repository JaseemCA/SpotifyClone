import 'package:spotifyclone/data/models/auth/create_user_req.dart';
import 'package:spotifyclone/data/sources/auth/auth_firebase_servise.dart';
import 'package:spotifyclone/domain/repository/auth/auth.dart';
import 'package:spotifyclone/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository{
  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<void> signup(CreateUserReq createUserReq) async{
   await sl<AuthFirebaseService>().signup(createUserReq);
  }


  
}