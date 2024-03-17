
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mychat/core/errors/failure.dart';
import 'package:mychat/core/usecase/usecase.dart';
import 'package:mychat/src/authentication/domain/entities/user.dart';
import 'package:mychat/src/authentication/domain/repositories/authentication_repository.dart';

class MockAutoRepo extends Mock implements AuthenticationRepository {}

void main() {
  late GetUsers usecase;
  late AuthenticationRepository repository;

  setUp(() {
    repository = MockAutoRepo();
    usecase = GetUsers(repository);
  });

  const tResponse = [User.empty()];

  test('should call the [AuthRepo.getUsers] and return [List<User>]', () async {
    // Arrange
    when(() => repository.getUsers()).thenAnswer((_) async => const Right(tResponse));

    // Act
    final result = await usecase();

    // Assert
    expect(result, equals(const Right<Failure, List<User>>(tResponse)));
    verify(() => repository.getUsers()).called(1);
    verifyNoMoreInteractions(repository);
  });
}
