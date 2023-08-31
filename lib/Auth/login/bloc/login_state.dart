part of 'login_bloc.dart';

enum AuthenticationStatus { authenticated, unauthenticated }

class AuthenticationState extends Equatable {
  final AuthenticationStatus status;

  const AuthenticationState(this.status);

  @override
  List<Object> get props => [status];
}
