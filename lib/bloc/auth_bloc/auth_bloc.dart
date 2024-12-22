import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../services/repository/mobile_connecting_services/user_repository.dart';
import '../../utils/dio_client.dart';
import '../../utils/utils.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserRepository userRepository;
  final DioClient dioClient;

  AuthBloc({required this.userRepository, required this.dioClient}) : super(AuthInitial()) {
    on<AuthLoginRequested>(_onAuthLoginRequested);
  }

  Future<void> _onAuthLoginRequested(
      AuthLoginRequested event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      final user = await userRepository.login(event.email, event.password);
      emit(AuthAuthenticated(user: user));
    } catch (e) {
      emit(AuthFailure(error: e.toString()));
    }
  }

  Future<void> fetchUserData() async {
    try {
      final data = await fetchData(dioClient, '/user_data');
      // Handle fetched data
    } catch (e) {
      // Handle error
    }
  }
}
