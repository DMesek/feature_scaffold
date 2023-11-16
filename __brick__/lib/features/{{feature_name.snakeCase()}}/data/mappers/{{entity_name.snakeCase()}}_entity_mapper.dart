import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_architecture/flutter_architecture.dart';

import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/entities/{{entity_name.snakeCase()}}.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/models/{{entity_name.snakeCase()}}_response.dart';

final {{entity_name.camelCase()}}EntityMapperProvider =
    Provider<EntityMapper<{{entity_name.pascalCase()}}, {{entity_name.pascalCase()}}Response>>(
  (ref) => (
    responseMapper: (response) => {{entity_name.pascalCase()}}(),
    requestMapper: null,
  ),
);