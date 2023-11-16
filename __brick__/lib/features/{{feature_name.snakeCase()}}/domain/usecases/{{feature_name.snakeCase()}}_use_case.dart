import 'package:flutter_architecture/flutter_architecture.dart';

import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/entities/{{entity_name.snakeCase()}}.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';
{{#with_service_layer}}
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/services/{{service_name.snakeCase()}}_service.dart';
{{/with_service_layer}}

class {{feature_name.pascalCase()}}UseCase {
  final {{feature_name.pascalCase()}}Repository _{{feature_name.camelCase()}}Repository;
  {{#with_service_layer}}
  final {{service_name.pascalCase()}}Service _{{service_name.camelCase()}}Service;
  {{/with_service_layer}}

  {{feature_name.pascalCase()}}UseCase(
    this._{{feature_name.camelCase()}}Repository,
    {{#with_service_layer}}this._{{service_name.camelCase()}}Service,{{/with_service_layer}}
  );

  EitherFailureOr<{{entity_name.pascalCase()}}> call() async => throw UnimplementedError();
}