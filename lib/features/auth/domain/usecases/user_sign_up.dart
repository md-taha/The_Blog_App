import 'package:fpdart/fpdart.dart';
import 'package:the_blog_app/core/error/failures.dart';
import 'package:the_blog_app/core/usecase/usecase.dart';
import 'package:the_blog_app/core/common/entities/user.dart';
import 'package:the_blog_app/features/auth/domain/repository/auth_repository.dart';

class UserSignUp implements Usecase<User, USerSignUpParams> {
  final AuthRepository authRepository;
  const UserSignUp(this.authRepository);

  @override
  Future<Either<Failure, User>> call(USerSignUpParams params) async {
    return await authRepository.signUpWithEmailPassword(
      email: params.email,
      name: params.name,
      password: params.password,
    );
  }
}

class USerSignUpParams {
  final String name;
  final String email;
  final String password;
  USerSignUpParams({
    required this.name,
    required this.email,
    required this.password,
  });
}
