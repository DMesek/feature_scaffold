import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/remote_data_sources/{{feature_name.snakeCase()}}_remote_data_source.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/repositories/{{feature_name.snakeCase()}}_repository_impl.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/models/{{entity_name.snakeCase()}}_response.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/entities/{{entity_name.snakeCase()}}.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';

class Mocked{{feature_name.pascalCase()}}RemoteDataSource extends Mock implements {{feature_name.pascalCase()}}RemoteDataSource {}
final _mockedResponseMapper = (
  responseMapper: ({{entity_name.pascalCase()}}Response response) => {{entity_name.pascalCase()}}(),
  requestMapper: null,
);

void main() {
  late {{feature_name.pascalCase()}}RemoteDataSource {{feature_name.camelCase()}}RemoteDataSource;
  late {{feature_name.pascalCase()}}Repository {{feature_name.camelCase()}}Repository;
  setUp(() {
    {{feature_name.camelCase()}}RemoteDataSource = Mocked{{feature_name.pascalCase()}}RemoteDataSource();
    {{feature_name.camelCase()}}Repository = {{feature_name.pascalCase()}}RepositoryImpl(
      {{feature_name.camelCase()}}RemoteDataSource,
      _mockedResponseMapper,
      );
    });
    //TODO: write tests for this repository

}
