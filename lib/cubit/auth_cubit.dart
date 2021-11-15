import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flynow/models/user_model.dart';
import 'package:flynow/services/auth_service.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      emit(const AuthLoading());

      UserModel user = await AuthService().signUp(
        email: email,
        password: password,
        name: name,
      );

      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}
