import 'package:booking/config/networking/base_response.dart';

abstract class AuthRepository {

  Future<BaseResponse> login(String email, String password);
  Future<BaseResponse> register(String email, String password,String name);
  Future<void> logout();
  Future<BaseResponse> forgotPassword(String email);

}
