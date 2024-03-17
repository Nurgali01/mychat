import 'package:mychat/core/utils/typedef.dart';
import 'package:mychat/src/authentication/domain/entities/user.dart';
import 'package:mychat/src/authentication/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImplementation
    implements AuthenticationRepository {


  @override
  ResultVoid createUser({
    required String createAt,
    required String name,
    required String avatar,
})async {
    //DOTO: implement createUser
   throw UnimplementedError();
  }

  @override
  ResultFuture<List<User>> getUser() {
    //TODO: implement getUsers
    throw UnimplementedError();
  }
}