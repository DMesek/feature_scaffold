import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/models/{{entity_name.snakeCase()}}_response.dart';

abstract interface class {{feature_name.pascalCase()}}RemoteDataSource {
  Future<{{entity_name.pascalCase()}}Response> get{{entity_name.pascalCase()}}();
}