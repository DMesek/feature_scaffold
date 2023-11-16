import 'package:flutter_architecture/base_state_notifier.dart';

import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/entities/{{entity_name.snakeCase()}}.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/usecases/{{feature_name.snakeCase()}}_use_case.dart';

class {{feature_name.pascalCase()}}Notifier extends BaseStateNotifier<{{entity_name.pascalCase()}}>{
  final {{feature_name.pascalCase()}}UseCase _{{feature_name.camelCase()}};

  {{feature_name.pascalCase()}}Notifier(this._{{feature_name.camelCase()}} ,super.ref,);

  void {{feature_name.camelCase()}}() => execute(_{{feature_name.camelCase()}}());
  
}
