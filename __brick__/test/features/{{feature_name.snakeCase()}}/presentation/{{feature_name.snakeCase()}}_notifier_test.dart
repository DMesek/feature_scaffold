import 'package:either_dart/either.dart';
import 'package:flutter_architecture/flutter_architecture.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:state_notifier_test/state_notifier_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_architecture/base_state_notifier.dart';

import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/entities/{{entity_name.snakeCase()}}.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/usecases/{{feature_name.snakeCase()}}_use_case.dart';
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/presentation/notifiers/{{feature_name.snakeCase()}}_notifier.dart';

class Mocked{{feature_name.pascalCase()}}UseCase extends Mock implements {{feature_name.pascalCase()}}UseCase {}

void main() {
  late ProviderContainer providerContainer;
  final _mocked{{feature_name.pascalCase()}}UseCase = Mocked{{feature_name.pascalCase()}}UseCase();
  final provider = BaseStateNotifierProvider<{{feature_name.pascalCase()}}Notifier, {{entity_name.pascalCase()}}>(
    (ref) => {{feature_name.pascalCase()}}Notifier(
      _mocked{{feature_name.pascalCase()}}UseCase,
      ref,
    ),
  );

  group('{{feature_name.camelCase()}}', () {
    stateNotifierTest<{{feature_name.pascalCase()}}Notifier, BaseState<{{entity_name.pascalCase()}}>>(
      'should emit [BaseLoading, BaseData] when use case returns result',
      setUp: () {
        when(_mocked{{feature_name.pascalCase()}}UseCase.call).thenAnswer(
          (_) async => const Right({{entity_name.pascalCase()}}()),
        );
        providerContainer = ProviderContainer();
      },
      build: () => providerContainer.read(provider.notifier),
      actions: (stateNotifier) => stateNotifier.{{feature_name.camelCase()}}(),
      expect: () => [
        const BaseState<Never>.loading(), 
        const BaseState.data({{entity_name.pascalCase()}}()),
      ],
    );

    stateNotifierTest<{{feature_name.pascalCase()}}Notifier, BaseState<{{entity_name.pascalCase()}}>>(
      'should emit [BaseLoading, BaseError] when use case returns failure',
      setUp: () {
        when(_mocked{{feature_name.pascalCase()}}UseCase.call).thenAnswer(
          (_) async => Left(Failure.generic()),
        );
        providerContainer = ProviderContainer();
      },
      build: () => providerContainer.read(provider.notifier),
      actions: (stateNotifier) => stateNotifier.{{feature_name.camelCase()}}(),
      expect: () => [
        const BaseState<Never>.loading(),
        BaseState<{{entity_name.pascalCase()}}>.error(Failure.generic()),
      ],
    );
  });
}
