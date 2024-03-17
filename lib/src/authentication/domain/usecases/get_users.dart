
import 'package:dartz/dartz.dart';
import 'package:mychat/core/errors/failure.dart';
import 'package:mychat/core/utils/typedef.dart';
import 'package:mychat/src/authentication/domain/entities/user.dart';
import 'package:mychat/src/authentication/domain/repositories/authentication_repository.dart';

class GetUsersUseCase {
  final AuthenticationRepository _repository;

  GetUsersUseCase(this._repository);

  Future<Either<Failure, List<User>>> call() async {
    final result = await _repository.getUsers();
    return result.fold((failure) => Left(failure), (users) => Right(users));
  }
}

