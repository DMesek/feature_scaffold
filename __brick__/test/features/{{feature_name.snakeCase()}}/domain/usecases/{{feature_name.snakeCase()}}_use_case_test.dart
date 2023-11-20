import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/usecases/{{feature_name.snakeCase()}}_use_case.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';
{{#with_service_layer}}import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/services/{{service_name.snakeCase()}}_service.dart';{{/with_service_layer}}

class Mocked{{feature_name.pascalCase()}}Repository extends Mock implements {{feature_name.pascalCase()}}Repository {}
{{#with_service_layer}}class Mocked{{service_name.pascalCase()}}Service extends Mock implements {{service_name.pascalCase()}}Service {}{{/with_service_layer}}

void main() {
  late {{feature_name.pascalCase()}}Repository _mocked{{feature_name.pascalCase()}}Repository;
  {{#with_service_layer}}late {{service_name.pascalCase()}}Service _mocked{{service_name.pascalCase()}}Service;{{/with_service_layer}}
  late {{feature_name.pascalCase()}}UseCase _{{feature_name.camelCase()}};

  setUp(() {
    _mocked{{feature_name.pascalCase()}}Repository = Mocked{{feature_name.pascalCase()}}Repository();
    {{#with_service_layer}}_mocked{{service_name.pascalCase()}}Service = Mocked{{service_name.pascalCase()}}Service();{{/with_service_layer}}
    _{{feature_name.camelCase()}} = {{feature_name.pascalCase()}}UseCase(
      _mocked{{feature_name.pascalCase()}}Repository,
      {{#with_service_layer}}_mocked{{service_name.pascalCase()}}Service,{{/with_service_layer}}
    );
  });
    //TODO: write tests for this use case

}