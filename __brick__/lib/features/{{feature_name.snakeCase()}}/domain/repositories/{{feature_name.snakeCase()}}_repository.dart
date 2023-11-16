import 'package:flutter_architecture/flutter_architecture.dart';

import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/entities/{{entity_name.snakeCase()}}.dart';

abstract interface class {{feature_name.pascalCase()}}Repository { 
  EitherFailureOr<{{entity_name.pascalCase()}}> function();
}