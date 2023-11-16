import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/di.dart';

class {{feature_name.pascalCase()}}Page extends ConsumerWidget {
  const {{feature_name.pascalCase()}}Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch({{feature_name.camelCase()}}NotifierProvider);
    return Container();
  }
}
