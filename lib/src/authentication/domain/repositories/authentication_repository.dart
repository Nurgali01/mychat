import 'package:dartz/dartz.dart';
import 'package:mychat/core/errors/failure.dart';
import 'package:mychat/core/utils/typedef.dart';
import 'package:mychat/src/authentication/domain/entities/user.dart';

abstract class AuthenticationRepository {
  const AuthenticationRepository();

  ResultVoid createUser({
    required String createdAt,
    required String name,
    required String avatar,
  });

  Future<Either<Failure, List<User>>> getUsers();
}