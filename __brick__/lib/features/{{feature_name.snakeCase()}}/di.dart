import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_architecture/base_state_notifier.dart';

import 'package:{{project_name.snakeCase()}}/core/data/di.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/mappers/{{entity_name.snakeCase()}}_entity_mapper.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/repositories/{{feature_name.snakeCase()}}_repository_impl.dart';
{{#with_service_layer}}
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/services/{{service_name.snakeCase()}}_service_impl.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/services/{{service_name.snakeCase()}}_service.dart';
{{/with_service_layer}}
{{#with_local_data_source_layer}}
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/local_data_sources/{{feature_name.snakeCase()}}_local_data_source.dart';
{{/with_local_data_source_layer}}
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/entities/{{entity_name.snakeCase()}}.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/usecases/{{feature_name.snakeCase()}}_use_case.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/presentation/notifiers/{{feature_name.snakeCase()}}_notifier.dart';

// ********* DATA LAYER *********
final _{{feature_name.camelCase()}}RepositoryProvider = Provider<{{feature_name.pascalCase()}}Repository>((ref) =>
    {{feature_name.pascalCase()}}RepositoryImpl(
      ref.watch(apiClientProvider),
      ref.watch({{entity_name.camelCase()}}EntityMapperProvider),
    {{#with_local_data_source_layer}}
    ref.watch(_{{feature_name.camelCase()}}LocalDataSourceProvider),
    {{/with_local_data_source_layer}}
    ));
{{#with_local_data_source_layer}}
final _{{feature_name.camelCase()}}LocalDataSourceProvider = Provider<{{feature_name.pascalCase()}}LocalDataSource>((ref) =>
    {{feature_name.pascalCase()}}LocalDataSource(),
  );
{{/with_local_data_source_layer}}

{{#with_service_layer}}
// ******* SERVICE LAYER *********
final _{{service_name.camelCase()}}ServiceProvider = Provider<{{service_name.pascalCase()}}Service>((ref) =>
    {{service_name.pascalCase()}}ServiceImpl(),
  );
{{/with_service_layer}}

// ******** DOMAIN LAYER ********
final _{{feature_name.camelCase()}}UseCaseProvider = Provider<{{feature_name.pascalCase()}}UseCase>(
  (ref) => {{feature_name.pascalCase()}}UseCase(
    ref.watch(_{{feature_name.camelCase()}}RepositoryProvider),
    {{#with_service_layer}}
    ref.watch(_{{service_name.camelCase()}}ServiceProvider),
    {{/with_service_layer}}
  ),
);

// ***** PRESENTATION LAYER ******
final {{feature_name.camelCase()}}NotifierProvider = BaseStateNotifierProvider<{{feature_name.pascalCase()}}Notifier, {{entity_name.pascalCase()}}>((ref) =>
    {{feature_name.pascalCase()}}Notifier(
      ref.watch(_{{feature_name.camelCase()}}UseCaseProvider),
      ref,
    ),
  );