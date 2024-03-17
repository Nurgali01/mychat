import 'package:equatable/equatable.dart';
import 'package:mychat/core/usecase/usecase.dart';
import 'package:mychat/core/utils/typedef.dart';
import 'package:mychat/src/authentication/domain/repositories/authentication_repository.dart';

class CreateUser extends UsecaseWithParams<void, CreateUserParams> {
  const CreateUser(this._repository);

  final AuthenticationRepository _repository;

  @override
  Future<ResultVoid> call(CreateUserParams params) async =>
      _repository.createUser(
        createdAt: params.createdAt,
        name: params.name,
        avatar: params.avatar,
      );
}

class CreateUserParams extends Equatable {
  const CreateUserParams({
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  const CreateUserParams.empty()
      : this(
    createdAt: '_empty.createdAt',
    name: '_empty.name',
    avatar: '_empty.avatar',
  );

  final String createdAt;
  final String name;
  final String avatar;

  @override
  List<Object?> get props => [createdAt, name, avatar];
}


