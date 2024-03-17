
import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mychat/src/authentication/data/models/user_model.dart';
import 'package:mychat/src/authentication/domain/entities/user.dart';

void main() {
  test('should be a subclass of [User] entity', () {
    const tModel = UserModel.empty();

    expect(tModel, isA<User>());
  });

  final tJson = fixture('user.json');
  final tMap = jsonDecode(tJson) as DataMap;

  group('fromMap', () {    test('should return a [UserModel] with the right data', () {

     final result = UserModel.fromMap(tMap);
     expect(result, equals(tModel));
    });
  group('fromJson', () {      test('should return a [UserModel] with the right data', () {

        final result = UserModel.fromMap(tJson);
        expect(result, equals(tModel));
      });
  group('toMap',() {
    test('should return a [Map] with the right data', () {
      final result = tModel.toMap();

      expect(result, equal(tMap));

  });

  group('toJson', () {
      test('should return a [UserModel] with the right data', () {

      final result = tModel.toJson();
      final tJson = jsonEncode({
        "id":"1",
        "avatar":"_empty.avatar",
        "createdAt":"_empty.createdAt",
        "name":"_empty.name"
      });

      expect(result, tJson);
    });

  group('copyWith',() {
     test('should return a [UserModel] with the right data', () {
       final result = tModel.copyWith(name:'Paul');

       expect(result.name, equals('Paul'));
        });
  });
}