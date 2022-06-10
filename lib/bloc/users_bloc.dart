import 'package:assignment/models/users.dart';
import 'package:assignment/repository/api.dart';
import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'users_event.dart';
part 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UsersRepository usersRepository;
  UsersBloc({required this.usersRepository}) : super(const UsersInitial()) {
    on<GetUsers>(_getUsers);
  }

  void _getUsers(GetUsers event, Emitter<UsersState> emit)async{
    try{
        final users= await usersRepository.getUsers();

        if(state is! UsersSuccess){
          emit(UsersSuccess(usersList: users));
        } else{
          emit((state as UsersSuccess));
        }
    }catch(error){
      emit (const UserError(errorMessage: "Somthing went wrong"));
    }
  }
}
