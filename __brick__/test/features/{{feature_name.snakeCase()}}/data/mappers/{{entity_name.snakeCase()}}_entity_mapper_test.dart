//ignore_for_file: prefer-match-file-name
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/mappers/{{entity_name.snakeCase()}}_entity_mapper.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/models/{{entity_name.snakeCase()}}_response.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/entities/{{entity_name.snakeCase()}}.dart';

final test{{entity_name.pascalCase()}} = {{entity_name.pascalCase()}}();
final test{{entity_name.pascalCase()}}Response = {{entity_name.pascalCase()}}Response();

void main() {
  test(
    'Should map {{model_name.pascalCase()}} to appropriate {{entity_name.pascalCase()}} entity.',
    () async {
      final container = ProviderContainer();

      expect(
        container.read({{entity_name.camelCase()}}EntityMapperProvider).responseMapper(test{{entity_name.pascalCase()}}Response),
        test{{entity_name.pascalCase()}},
      );
    },
  );
}