import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_event.dart';
part 'login_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final SharedPreferences sharedPreferences;

  AuthenticationBloc({required this.sharedPreferences})
      : super(AuthenticationState(AuthenticationStatus.unauthenticated)) {
    on<LoginEvent>(_onLoginEvent);
    on<LogoutEvent>(_onLogoutEvent);
  }

  void _onLoginEvent(
      LoginEvent event, Emitter<AuthenticationState> emit) async {
    try {
      await sharedPreferences.setString('customerId', event.customerId);
      emit(AuthenticationState(AuthenticationStatus.authenticated));
    } catch (error) {
      print("Login error: $error");
    }
  }

  void _onLogoutEvent(
      LogoutEvent event, Emitter<AuthenticationState> emit) async {
    try {
      await sharedPreferences.remove('customerId');
      emit(AuthenticationState(AuthenticationStatus.unauthenticated));
    } catch (error) {
      print("Logout error: $error");
    }
  }
}
