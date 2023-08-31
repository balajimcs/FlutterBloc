part of 'login_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class LoginEvent extends AuthenticationEvent {
  final String customerId;
  final String password;

  const LoginEvent({required this.customerId, required this.password});

  @override
  List<Object> get props => [customerId, password];
}

class LogoutEvent extends AuthenticationEvent {}
