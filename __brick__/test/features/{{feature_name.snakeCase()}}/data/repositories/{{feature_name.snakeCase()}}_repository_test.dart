import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/remote_data_sources/{{feature_name.snakeCase()}}_remote_data_source.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/repositories/{{feature_name.snakeCase()}}_repository_impl.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/models/{{entity_name.snakeCase()}}_response.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/entities/{{entity_name.snakeCase()}}.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';
{{#with_local_data_source_layer}}import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/local_data_sources/{{feature_name.snakeCase()}}_local_data_source.dart';{{/with_local_data_source_layer}}

class Mocked{{feature_name.pascalCase()}}RemoteDataSource extends Mock implements {{feature_name.pascalCase()}}RemoteDataSource {}
{{#with_local_data_source_layer}}class Mocked{{feature_name.pascalCase()}}LocalDataSource extends Mock implements {{feature_name.pascalCase()}}LocalDataSource {}{{/with_local_data_source_layer}}

final _mockedResponseMapper = (
  responseMapper: ({{entity_name.pascalCase()}}Response response) => {{entity_name.pascalCase()}}(),
  requestMapper: null,
);

void main() {
  {{#with_local_data_source_layer}}late {{feature_name.pascalCase()}}LocalDataSource {{feature_name.camelCase()}}LocalDataSource;{{/with_local_data_source_layer}}
  late {{feature_name.pascalCase()}}RemoteDataSource {{feature_name.camelCase()}}RemoteDataSource;
  late {{feature_name.pascalCase()}}Repository {{feature_name.camelCase()}}Repository;
  setUp(() {
    {{feature_name.camelCase()}}RemoteDataSource = Mocked{{feature_name.pascalCase()}}RemoteDataSource();
    {{#with_local_data_source_layer}}{{feature_name.camelCase()}}LocalDataSource = Mocked{{feature_name.pascalCase()}}LocalDataSource();{{/with_local_data_source_layer}}
    {{feature_name.camelCase()}}Repository = {{feature_name.pascalCase()}}RepositoryImpl(
      {{feature_name.camelCase()}}RemoteDataSource,
      _mockedResponseMapper,
      {{#with_local_data_source_layer}}{{feature_name.camelCase()}}LocalDataSource,{{/with_local_data_source_layer}}
      );
    });
    //TODO: write tests for this repository

}
