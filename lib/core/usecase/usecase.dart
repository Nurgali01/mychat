
import 'package:mychat/core/utils/typedef.dart';

abstract class UsecaseWithParams<T, Params> {
  const UsecaseWithParams();

  Future<T> call(Params params);
}

abstract class UsecaseWithoutParams<Type>{
  const UsecaseWithoutParams();

  Future<Type> call();
}
