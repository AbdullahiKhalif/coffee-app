import 'package:get/get.dart';
import 'package:horyal_coffee/services/auth_services.dart';

class AuthController extends GetxController {
  final FirebaseAuthService _authService = FirebaseAuthService();

  //sign up
  Future<void> signUp({required String email, required String password}) async {
    await _authService.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  //sign In
  Future<void> signIn({required String email, required String password}) async {
    await _authService.signInWithEmailAndPassword(
        email: email, password: password);
  }

  //signout
  Future<void> signOut() async {
    await _authService.signOut();
  }

  //rest password
  Future<void> forgetPassword({required String email}) async {
    await _authService.forgetPassword(email: email);
  }
}
