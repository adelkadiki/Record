import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:record/features/auth/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
}
