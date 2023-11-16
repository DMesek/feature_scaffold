# Feature Scaffold brick

To simplify the implementation of new features and maintain consistency with the rest of the application's codebase, we have created a feature_scaffold brick.


## 🚀 How to use 

```
mason make feature_scaffold --project_name ${projectName} --feature_name ${featureName} --entity_name ${entity} --with_service_layer true --service_name ${serviceName}
```

## 📊 Variables 

| Variable       | Description                    | Default       | Type      |
|----------------|--------------------------------|---------------| --------- |
| `project_name` | The name of the project        | app           | `string`  |
| `feature_name`         | The name of the feature       | feature | `string`  |
| `entity_name`       | Name of the main domain entity | user          | `string`  |
| `with_service_layer` | Does your feature require a service layer?        | false         | `boolean`  |
| `service_name` | The name of the service        | service         | `string`  |

## 📤 Outputs 

```
mason make feature_scaffold --project_name example --feature_name weather --entity_name weather --with_service_layer true --service_name location
```

```
└── weather
    ├── data
    │   ├── mappers
    │   │   └── weather_entity_mapper.dart
    │   ├── models
    │   │   ├── weather_response.dart
    │   ├── remote_data_sources
    │   │   └── weather_remote_data_source.dart
    │   ├── repositories
    │   │   └── weather_repository_impl.dart
    │   └── services
    │       └── location_service_impl.dart
    ├── di.dart
    ├── domain
    │   ├── entities
    │   │   └── weather.dart
    │   ├── repositories
    │   │   └── weather_repository.dart
    │   ├── services
    │   │   └── location_service.dart
    │   └── usecases
    │       └── weather_use_case.dart
    └── presentation
        ├── notifiers
        │   └── weather_notifier.dart
        └── pages
            └── weather_page.dart
```

Check out the entire example [here](https://bitbucket.org/sbetroisdorf/flutter_architecture/src/master/example/lib/features/weather/).
