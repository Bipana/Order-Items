part of 'users_bloc.dart';

@immutable
abstract class UsersState extends Equatable{
  const UsersState();

   @override
  List<Object> get props => [];
}

class UsersInitial extends UsersState {
  const UsersInitial();
}

class UsersLoading extends UsersState{
  const UsersLoading();
}

class UsersSuccess extends UsersState{
  final BuiltList <Users> usersList;

  const UsersSuccess({required this.usersList});

  @override
  List<Object> get props => [usersList];
}

class UserError extends UsersState{
  final String errorMessage;
  const UserError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];

}
